#!/usr/bin/env bash
# Build -> align -> sign -> verify the standalone apers APK from the decoded
# apktool project. Produces $OUTPUT_DIR/apers-signed.apk and prints its SHA-256.
#
# Usage:  bash scripts/build-apk.sh
# Env overrides: JAVA_HOME, ANDROID_SDK, BUILD_TOOLS, APKTOOL_JAR, OUTPUT_DIR,
#                KEYSTORE, KEY_ALIAS, KEYSTORE_PASS
set -euo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/env.sh"

mkdir -p "$OUTPUT_DIR"
UNSIGNED="$OUTPUT_DIR/apers-unsigned.apk"
ALIGNED="$OUTPUT_DIR/apers-aligned.apk"
SIGNED="$OUTPUT_DIR/apers-signed.apk"
BUILD_LOG="$OUTPUT_DIR/build.log"

echo "==> [1/6] Clean previous artifacts"
rm -f "$UNSIGNED" "$ALIGNED" "$SIGNED" "$SIGNED.idsig"

echo "==> [2/6] apktool build (aapt2)"
java -jar "$APKTOOL_JAR" b "$PROJECT_DIR" -o "$UNSIGNED" 2>&1 | tee "$BUILD_LOG"

echo "==> [3/6] zipalign (-p 4)"
"$ZIPALIGN" -p -f 4 "$UNSIGNED" "$ALIGNED"
"$ZIPALIGN" -c -v 4 "$ALIGNED" >/dev/null
echo "    alignment verified"

echo "==> [4/6] Ensure signing keystore exists"
if [ ! -f "$KEYSTORE" ]; then
  if [ -z "${KEYSTORE_PASS:-}" ]; then
    echo "ERROR: no keystore and no KEYSTORE_PASS set; refusing to invent one silently." >&2
    exit 1
  fi
  echo "    creating local keystore $KEYSTORE"
  "$KEYTOOL" -genkeypair -keystore "$KEYSTORE" -alias "$KEY_ALIAS" \
    -keyalg RSA -keysize 4096 -validity 10000 \
    -storepass "$KEYSTORE_PASS" -keypass "$KEYSTORE_PASS" \
    -dname "CN=Apers Local Build, OU=Local, O=Local, L=Local, ST=Local, C=US"
fi

echo "==> [5/6] apksigner sign (v1+v2+v3)"
"$APKSIGNER" sign \
  --ks "$KEYSTORE" --ks-key-alias "$KEY_ALIAS" \
  --ks-pass "pass:$KEYSTORE_PASS" --key-pass "pass:$KEYSTORE_PASS" \
  --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true \
  --out "$SIGNED" "$ALIGNED"

echo "==> [6/6] Verify + hash"
"$APKSIGNER" verify --verbose --print-certs "$SIGNED" | tee "$OUTPUT_DIR/verification.txt"
SHA="$(sha256sum "$SIGNED" | cut -d' ' -f1)"
echo "$SHA  apers-signed.apk" > "$SIGNED.sha256"

echo
echo "FINAL APK : $SIGNED"
echo "SIZE      : $(stat -c%s "$SIGNED") bytes"
echo "SHA-256   : $SHA"
