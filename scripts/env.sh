#!/usr/bin/env bash
# Shared environment for the apers APK build/verify/install scripts.
# Override any of these by exporting them before sourcing this file.
set -euo pipefail

# JDK (Android Studio bundled JBR by default; any JDK 17+ works).
export JAVA_HOME="${JAVA_HOME:-/d/Programs/Android Studio/jbr}"

# Android SDK with build-tools;35.0.0 + platform-tools installed.
export ANDROID_SDK="${ANDROID_SDK:-/d/apers-build/tools/android-sdk}"
export BUILD_TOOLS="${BUILD_TOOLS:-$ANDROID_SDK/build-tools/35.0.0}"

# apktool 2.11.x fat jar.
export APKTOOL_JAR="${APKTOOL_JAR:-/d/apers-build/tools/apktool.jar}"

# Decoded apktool project root (this repo).
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export PROJECT_DIR="${PROJECT_DIR:-$(cd "$SCRIPT_DIR/.." && pwd)}"

# Where build artifacts go: project-local ./dist by default (gitignored).
export OUTPUT_DIR="${OUTPUT_DIR:-$PROJECT_DIR/dist}"

# Signing config. Password is read from a file (never committed) or env.
export KEYSTORE="${KEYSTORE:-$OUTPUT_DIR/apers-local-release.jks}"
export KEY_ALIAS="${KEY_ALIAS:-apers-local}"
# KEYSTORE_PASS may be exported directly; otherwise read from a local file.
if [ -z "${KEYSTORE_PASS:-}" ] && [ -f "$OUTPUT_DIR/keystore-password.txt" ]; then
  KEYSTORE_PASS="$(cat "$OUTPUT_DIR/keystore-password.txt")"
fi
export KEYSTORE_PASS="${KEYSTORE_PASS:-}"

export PATH="$JAVA_HOME/bin:$BUILD_TOOLS:$ANDROID_SDK/platform-tools:$PATH"

# Resolve tool binaries across Windows (.bat/.exe) and Unix.
_pick() { for c in "$@"; do [ -x "$c" ] && { echo "$c"; return; }; done; echo "$1"; }
export AAPT2="$(_pick "$BUILD_TOOLS/aapt2.exe" "$BUILD_TOOLS/aapt2")"
export ZIPALIGN="$(_pick "$BUILD_TOOLS/zipalign.exe" "$BUILD_TOOLS/zipalign")"
export APKSIGNER="$(_pick "$BUILD_TOOLS/apksigner.bat" "$BUILD_TOOLS/apksigner")"
export KEYTOOL="$(_pick "$JAVA_HOME/bin/keytool.exe" "$JAVA_HOME/bin/keytool")"
export ADB="$(_pick "$ANDROID_SDK/platform-tools/adb.exe" "$ANDROID_SDK/platform-tools/adb")"

export APP_ID="apers.terminal.agent.ap"
