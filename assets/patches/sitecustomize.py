"""
Android Termux — sitecustomize.py
==================================
放置於 PYTHONPATH 中，Python 啟動時自動載入。
這避免了修改上游 hermes-agent 的任何原始碼。

Python 文件載入順序：
1. sitecustomize.py (本檔案 — 自動)
2. monkey_patch.py (由本檔案觸發)
3. hermes_cli / run_agent 等 (正常業務邏輯)
"""
import os

# ── vfork 崩潰修復（2026-07-20,task #100）──────────────────────────────
# 根因:LD_PRELOAD=libtermux-exec.so 的 execve() hook 會在 vfork 窗口內
# malloc（重寫 argv/路徑）。vfork 子行程與父行程共用位址空間,這些配置與
# 父行程其他執行緒（如 hermes init 的 httpx/SSL 執行緒）的 allocator 併發
# 互踩 → scudo heap 損毀 → python3 SIGABRT「corrupted chunk header」
# （agent init 高達 ~75% 崩潰率）。真機 A/B 實證:無 preload 12/12 過、
# 有 preload 9/12 崩、有 preload+本修復 12/12 過。
# 改走普通 fork() 讓子行程用自己的 COW heap,永遠安全。
# _USE_POSIX_SPAWN 在 bionic 上本來就 False（其 posix_spawn 也是 vfork 實作）,
# 一併固定,防未來 python 升版改判。
import subprocess as _subprocess
_subprocess._USE_VFORK = False
_subprocess._USE_POSIX_SPAWN = False
del _subprocess

# 只在 Termux 環境下載入 monkey_patch
_PREFIX = os.environ.get("PREFIX", "")
if "com.termux" in _PREFIX or os.path.isdir("/data/data/com.termux"):
    try:
        import monkey_patch  # noqa: F401
    except ImportError:
        import sys
        print(
            "[hermes-android] Warning: monkey_patch.py not found. "
            "Open the app: Settings -> Repair Installation to fix.",
            file=sys.stderr,
        )
