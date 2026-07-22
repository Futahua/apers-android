"""
Hermes Agent — Android Termux 相容層
=====================================
在 hermes 啟動最早期透過 import 載入，自動偵測 Termux 環境並注入修補。

設計原則：
- 不修改上游任何 .py 檔案（monkey patch only）
- 所有修補集中在此單一檔案
- 非 Termux 環境下完全不生效（零開銷）
"""

import os
import sys

# ── 環境偵測 ──────────────────────────────────────────────────
_PREFIX = os.environ.get("PREFIX", "")
IS_TERMUX = (
    "com.termux" in _PREFIX
    or os.path.isdir("/data/data/com.termux")
)

if not IS_TERMUX:
    # 非 Termux 環境，什麼都不做
    pass
else:
    import functools
    import logging
    import subprocess
    import tempfile

    _logger = logging.getLogger("hermes.android")
    _logger.info("Termux environment detected — applying monkey patches")

    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    # 1. 修復臨時目錄路徑
    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    _TERMUX_TMP = os.environ.get("TMPDIR", os.path.join(_PREFIX, "tmp"))
    try:
        os.makedirs(_TERMUX_TMP, exist_ok=True)
    except OSError:
        # 測試環境或路徑不可寫時，退回系統 tmpdir
        import tempfile as _tf
        _TERMUX_TMP = _tf.gettempdir()

    # 確保 $TMPDIR 設定正確 — Python tempfile 模組會讀取此變數
    os.environ["TMPDIR"] = _TERMUX_TMP
    os.environ["TEMP"] = _TERMUX_TMP
    os.environ["TMP"] = _TERMUX_TMP
    tempfile.tempdir = _TERMUX_TMP

    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    # 2. 修復 Shell 路徑
    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    _TERMUX_SH = os.path.join(_PREFIX, "bin", "sh")
    _TERMUX_BASH = os.path.join(_PREFIX, "bin", "bash")
    _TERMUX_ENV = os.path.join(_PREFIX, "bin", "env")

    # 路徑替換映射
    _PATH_MAP = {
        "/bin/sh": _TERMUX_SH,
        "/bin/bash": _TERMUX_BASH,
        "/usr/bin/bash": _TERMUX_BASH,
        "/usr/bin/sh": _TERMUX_SH,
        "/usr/bin/env": _TERMUX_ENV,
    }

    def _rewrite_path(p: str) -> str:
        """將標準 Unix 路徑重寫為 Termux 路徑"""
        if not isinstance(p, str):
            return p
        # Shell 路徑
        for old, new in _PATH_MAP.items():
            if p == old:
                return new
        # /tmp 路徑
        if p == "/tmp":
            return _TERMUX_TMP
        if p.startswith("/tmp/"):
            return os.path.join(_TERMUX_TMP, p[5:])
        return p

    def _rewrite_args(args):
        """重寫命令參數列表中的路徑"""
        if isinstance(args, (list, tuple)):
            return type(args)(_rewrite_path(a) for a in args)
        if isinstance(args, str):
            # 字串命令中替換已知路徑（shell=True 模式）
            result = args
            for old, new in _PATH_MAP.items():
                result = result.replace(old, new)
            # 替換 /tmp 引用（注意順序：先替換 /tmp/ 再替換獨立的 /tmp）
            result = result.replace('"/tmp/', f'"{_TERMUX_TMP}/')
            result = result.replace("'/tmp/", f"'{_TERMUX_TMP}/")
            result = result.replace(" /tmp/", f" {_TERMUX_TMP}/")
            return result
        return args

    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    # 3. Monkey Patch subprocess.Popen
    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    _OriginalPopen = subprocess.Popen

    class _TermuxPopen(_OriginalPopen):
        """攔截所有 subprocess 呼叫，自動修正路徑"""

        def __init__(self, args, **kwargs):
            # 修正 args
            args = _rewrite_args(args)

            # 修正 executable
            if "executable" in kwargs and kwargs["executable"]:
                kwargs["executable"] = _rewrite_path(kwargs["executable"])

            # 修正 shell=True 的預設 shell
            if kwargs.get("shell") and "executable" not in kwargs:
                kwargs["executable"] = _TERMUX_SH

            # 修正 cwd
            if "cwd" in kwargs and kwargs["cwd"]:
                kwargs["cwd"] = _rewrite_path(str(kwargs["cwd"]))

            # 修正 env 中的路徑
            if "env" in kwargs and kwargs["env"]:
                env = dict(kwargs["env"])
                if "TMPDIR" not in env:
                    env["TMPDIR"] = _TERMUX_TMP
                if "SHELL" not in env:
                    env["SHELL"] = _TERMUX_BASH if os.path.isfile(_TERMUX_BASH) else _TERMUX_SH
                kwargs["env"] = env

            super().__init__(args, **kwargs)

    subprocess.Popen = _TermuxPopen

    # 同時修補 subprocess.run 和 subprocess.call（它們內部用 Popen）
    # 但 subprocess.run 的 input 參數會直接傳給 Popen，所以不需要額外修補

    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    # 4. 修復 /proc 存取
    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    _original_open = open

    @functools.wraps(_original_open)
    def _patched_open(file, *args, **kwargs):
        """攔截 /proc 相關的讀取，在失敗時提供安全的 fallback"""
        if isinstance(file, str):
            # /proc/version — WSL 偵測用，Termux 直接回傳 Android
            if file == "/proc/version":
                try:
                    return _original_open(file, *args, **kwargs)
                except (PermissionError, FileNotFoundError, OSError):
                    import io
                    return io.StringIO("Linux version 0.0.0 (android-termux)")

            # /.dockerenv — 容器偵測，Termux 不在容器中
            if file == "/.dockerenv":
                raise FileNotFoundError(f"[Errno 2] No such file: '{file}'")

            # /proc/<pid>/stat, /proc/<pid>/status, /proc/<pid>/cmdline
            if file.startswith("/proc/") and "/task/" not in file:
                try:
                    return _original_open(file, *args, **kwargs)
                except (PermissionError, OSError):
                    # Android SELinux 可能阻擋跨進程的 /proc 讀取
                    raise FileNotFoundError(
                        f"[Termux] Cannot read {file} — SELinux restriction"
                    )

        return _original_open(file, *args, **kwargs)

    import builtins
    builtins.open = _patched_open

    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    # 5. 修復 os.path.join 中的 /tmp 路徑
    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    _original_path_join = os.path.join

    @functools.wraps(_original_path_join)
    def _patched_path_join(*args):
        result = _original_path_join(*args)
        # 只攔截 hermes 相關的 /tmp 路徑
        if result.startswith("/tmp/hermes"):
            return result.replace("/tmp/", f"{_TERMUX_TMP}/", 1)
        return result

    os.path.join = _patched_path_join

    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    # 6. 修復 os.path.exists / os.path.isfile 對 /bin 路徑的檢查
    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    _original_exists = os.path.exists
    _original_isfile = os.path.isfile

    @functools.wraps(_original_exists)
    def _patched_exists(path):
        rewritten = _rewrite_path(str(path))
        if rewritten != str(path) and not _original_exists(str(path)):
            return _original_exists(rewritten)
        return _original_exists(str(path))

    @functools.wraps(_original_isfile)
    def _patched_isfile(path):
        rewritten = _rewrite_path(str(path))
        if rewritten != str(path) and not _original_isfile(str(path)):
            return _original_isfile(rewritten)
        return _original_isfile(str(path))

    os.path.exists = _patched_exists
    os.path.isfile = _patched_isfile

    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    # 7. 修復 shutil.which 對 Shell 的查找
    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    import shutil
    _original_which = shutil.which

    @functools.wraps(_original_which)
    def _patched_which(name, mode=os.F_OK | os.X_OK, path=None):
        result = _original_which(name, mode=mode, path=path)
        if result:
            return result
        # Termux 的 PATH 可能不包含所有路徑，手動查找
        termux_bin = os.path.join(_PREFIX, "bin", name)
        if os.path.isfile(termux_bin) and os.access(termux_bin, mode):
            return termux_bin
        return None

    shutil.which = _patched_which

    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    # 8. 停用不相容功能的環境標記
    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    os.environ.setdefault("HERMES_PLATFORM", "android-termux")
    os.environ.setdefault("HERMES_NO_DOCKER", "1")

    # 語音模式：如果 sounddevice 不可用，預設停用
    try:
        import sounddevice  # noqa: F401
    except (ImportError, OSError):
        os.environ.setdefault("HERMES_NO_VOICE", "1")

    # 瀏覽器工具：Termux 中無 Chromium
    os.environ.setdefault("HERMES_NO_BROWSER", "1")

    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    # 9. 修復進程群組操作（Termux 限制）
    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    _original_killpg = os.killpg

    def _safe_killpg(pgid, sig):
        """在 Termux 上 killpg 可能因 SELinux 而失敗，降級為 kill"""
        try:
            return _original_killpg(pgid, sig)
        except (PermissionError, ProcessLookupError, OSError) as e:
            _logger.warning(f"killpg({pgid}, {sig}) failed: {e}, falling back to kill")
            try:
                os.kill(pgid, sig)
            except (ProcessLookupError, OSError):
                pass  # 進程已經結束

    os.killpg = _safe_killpg

    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    # 10. 修復 Unix 域套接字路徑長度限制
    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    # Android 的 socket 路徑限制比 macOS (104) 還短
    # Termux 的 $PREFIX 路徑很長: /data/data/com.termux/files/usr/tmp/...
    # 改用更短的路徑
    _SHORT_SOCK_DIR = os.path.join(
        os.environ.get("HOME", _TERMUX_TMP), ".hermes-android", "sock"
    )
    try:
        os.makedirs(_SHORT_SOCK_DIR, exist_ok=True)
        os.environ.setdefault("HERMES_RPC_DIR", _SHORT_SOCK_DIR)
    except OSError:
        os.environ.setdefault("HERMES_RPC_DIR", _TERMUX_TMP)

    # ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    _logger.info(
        "Termux monkey patches applied — "
        f"TMPDIR={_TERMUX_TMP}, SHELL={os.environ.get('SHELL', '?')}"
    )
