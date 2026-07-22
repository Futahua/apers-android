#!/usr/bin/env bash
# Structural + signature verification of the built APK, plus the
# "Problem parsing the package" root-cause checklist.
#
# Usage:  bash scripts/verify-apk.sh [path-to-apk]
set -euo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/env.sh"

APK="${1:-$OUTPUT_DIR/apers-signed.apk}"
[ -f "$APK" ] || { echo "APK not found: $APK" >&2; exit 1; }
echo "Verifying: $APK"
echo

echo "== unzip -t (ZIP integrity) =="
unzip -t "$APK" >/dev/null && echo "  ZIP OK"

echo "== zipalign -c 4 =="
"$ZIPALIGN" -c 4 "$APK" >/dev/null && echo "  ALIGN OK"

echo "== apksigner verify =="
"$APKSIGNER" verify --verbose "$APK" | sed 's/^/  /'

echo "== aapt2 badging =="
"$AAPT2" dump badging "$APK" | grep -E "^package:|launchable-activity:|native-code:|minSdkVersion|targetSdkVersion" | sed 's/^/  /'

echo "== parse-failure checklist =="
echo -n "  required-split metadata: "
"$AAPT2" dump xmltree "$APK" --file AndroidManifest.xml \
  | grep -iE 'requiredSplitTypes|vending.splits|isSplitRequired' && echo "  <-- PRESENT (BAD)" || echo "NONE (good)"
echo -n "  dex files: "; unzip -l "$APK" | grep -oE 'classes[0-9]*\.dex' | sort | tr '\n' ' '; echo
echo -n "  resources.arsc stored: "; unzip -v "$APK" resources.arsc | grep -q Stored && echo "yes (good)" || echo "COMPRESSED (bad for targetSdk>=30)"
echo -n "  arm64 libs: "; unzip -l "$APK" | grep -c 'lib/arm64-v8a/.*\.so';
