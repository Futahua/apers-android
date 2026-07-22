"""
handoff_import — 手機端匯入 runner（#6c-4b）。

由 Android HandoffImporter 經 Termux 呼叫：
    python3 handoff_import.py <bundle.json>

讀 bundle JSON → 呼叫 handoff_core.import_all(HERMES_HOME, bundle) → 把統計以
單行 `HANDOFF_STATS:{...}` 印到 stdout（Kotlin 端解析）。任何錯誤以非零退出碼 +
`HANDOFF_ERROR:<msg>` 回報，不讓 traceback 形態決定成敗判讀。

handoff_core.py 與本檔一起放在同目錄（由 HandoffImporter 從 APK assets 複製到
~/.hermes/handoff/），故同目錄 import 即可，零外部相依（只用標準庫）。
"""
import json
import os
import sys


def main() -> int:
    sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
    try:
        import handoff_core
    except Exception as e:  # noqa: BLE001
        print("HANDOFF_ERROR:cannot import handoff_core: " + str(e))
        return 2

    if len(sys.argv) < 2:
        print("HANDOFF_ERROR:missing bundle path arg")
        return 2

    home = os.environ.get("HERMES_HOME") or os.path.expanduser("~/.hermes")
    bundle_path = sys.argv[1]
    try:
        with open(bundle_path, encoding="utf-8") as f:
            bundle = json.load(f)
        stats = handoff_core.import_all(home, bundle)
    except Exception as e:  # noqa: BLE001
        print("HANDOFF_ERROR:" + str(e))
        return 1

    print("HANDOFF_STATS:" + json.dumps(stats, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    sys.exit(main())
