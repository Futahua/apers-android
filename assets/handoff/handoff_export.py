"""
handoff_export — 手機端匯出 runner（#22 反向同步：手機→桌面）。

由 Android HandoffExporter 經 Termux 呼叫：
    python3 handoff_export.py <out_bundle.json>

讀本機 ~/.hermes/state.db 全部 session + memories/ → 組成單一 bundle → 寫到 <out_bundle.json>。
成功印單行 `HANDOFF_EXPORT_OK:<path>`（Kotlin 端據此讀檔上傳）；錯誤以非零退出碼 +
`HANDOFF_ERROR:<msg>` 回報，不讓 traceback 形態決定成敗判讀。

bundle 與接力（PC→手機）同格式 → 桌面 broker 直接以 handoff_core.import_all 冪等合併。
🔴 機密永不入 bundle：只讀 state.db + memories/，絕不碰 auth.json/.env；memories/ 內以
realpath 鎖在目錄內，拒讀逃出目錄的 symlink（防 `mem.md -> ../.env` 把機密帶出）。

handoff_core.py 與本檔一起放在同目錄（由 HandoffExporter 從 APK assets 複製到
~/.hermes/handoff/），同目錄 import 即可，零外部相依（只用標準庫）。
"""
import json
import os
import sys
import time


def _read_memory(hermes_home: str) -> dict:
    """讀 memories/*.md 成 {filename: content}。無目錄回空。只收鎖在 memories/ 內的純檔名 .md。"""
    mem_dir = os.path.join(hermes_home, "memories")
    if not os.path.isdir(mem_dir):
        return {}
    base = os.path.realpath(mem_dir)
    out = {}
    for name in os.listdir(mem_dir):
        if not name.endswith(".md"):
            continue
        full = os.path.join(mem_dir, name)
        # realpath 逃出 memories/ → 拒讀（防 symlink 穿越帶出機密）
        if os.path.dirname(os.path.realpath(full)) != base:
            continue
        try:
            with open(full, encoding="utf-8") as f:
                out[name] = f.read()
        except OSError:
            continue
    return out


def main() -> int:
    sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
    try:
        import handoff_core
    except Exception as e:  # noqa: BLE001
        print("HANDOFF_ERROR:cannot import handoff_core: " + str(e))
        return 2

    if len(sys.argv) < 2:
        print("HANDOFF_ERROR:missing out path arg")
        return 2

    home = os.environ.get("HERMES_HOME") or os.path.expanduser("~/.hermes")
    state_db = os.path.join(home, "state.db")
    out_path = sys.argv[1]
    device = os.environ.get("HANDOFF_DEVICE_ID", "android")
    try:
        if not os.path.exists(state_db):
            print("HANDOFF_ERROR:no state.db (尚無任何對話可同步)")
            return 1
        bundle = handoff_core.export_all(state_db, source_device=device, exported_at=time.time())
        bundle["memory"] = _read_memory(home)
        with open(out_path, "w", encoding="utf-8") as f:
            json.dump(bundle, f, ensure_ascii=False)
    except Exception as e:  # noqa: BLE001
        print("HANDOFF_ERROR:" + str(e))
        return 1

    n_sessions = len(bundle.get("sessions", []))
    n_messages = len(bundle.get("messages", []))
    print(f"HANDOFF_EXPORT_OK:{out_path} sessions={n_sessions} messages={n_messages}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
