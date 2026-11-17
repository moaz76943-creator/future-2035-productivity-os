#!/usr/bin/env bash
set -Eeuo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ANDROID_DIR="$ROOT/android"
WRAPPER_DIR="$ANDROID_DIR/gradle/wrapper"

if [[ -x "$ANDROID_DIR/gradlew" && -s "$WRAPPER_DIR/gradle-wrapper.jar" ]]; then
  echo "Gradle wrapper is already complete."
  exit 0
fi

command -v flutter >/dev/null 2>&1 || {
  echo "Flutter is required to bootstrap the Gradle wrapper." >&2
  exit 1
}
[[ -s "$WRAPPER_DIR/gradle-wrapper.properties" ]] || {
  echo "Missing android/gradle/wrapper/gradle-wrapper.properties; refusing to invent a Gradle version." >&2
  exit 1
}

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

flutter create --platforms=android --project-name future_os "$tmp/bootstrap"

install -D "$tmp/bootstrap/android/gradlew" "$ANDROID_DIR/gradlew"
install -D "$tmp/bootstrap/android/gradlew.bat" "$ANDROID_DIR/gradlew.bat"
install -D "$tmp/bootstrap/android/gradle/wrapper/gradle-wrapper.jar" "$WRAPPER_DIR/gradle-wrapper.jar"
chmod +x "$ANDROID_DIR/gradlew"

echo "Gradle wrapper bootstrapped. Existing project wrapper properties were preserved:"
grep '^distributionUrl=' "$WRAPPER_DIR/gradle-wrapper.properties"
