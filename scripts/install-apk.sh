#!/usr/bin/env bash
# Install the signed APK on a connected device via ADB and launch it.
# Installs ALONGSIDE the original Hermes Agent app (different package id).
#
# Usage:  bash scripts/install-apk.sh
set -euo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/env.sh"

APK="${1:-$OUTPUT_DIR/apers-signed.apk}"


"$ADB" start-server >/dev/null 2>&1 || true
if [ -z "$("$ADB" devices | sed '1d' | grep -w device || true)" ]; then
  echo "No authorized ADB device connected. Connect a device with USB debugging enabled." >&2
  "$ADB" devices
  exit 1
fi

echo "==> Installing $APK (package $APP_ID)"
"$ADB" install -r "$APK" || {
  echo "Reinstall failed; trying clean install of this package only"
  "$ADB" uninstall "$APP_ID" || true
  "$ADB" install "$APK"
}

echo "==> Launching $APP_ID"
"$ADB" shell monkey -p "$APP_ID" -c android.intent.category.LAUNCHER 1

echo "==> Recent logcat (Ctrl-C to stop):"
"$ADB" logcat -d | grep -iE "AndroidRuntime|FATAL|$APP_ID|UnsatisfiedLinkError|ClassNotFound|VerifyError" | tail -40 || true
