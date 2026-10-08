#!/usr/bin/env bash
# Swep — install or update on macOS with one line:
#   curl -fsSL https://ipconfig.co.network/updates/swep/install.sh | bash
# Downloads the newest signed release for this Mac (Apple Silicon or Intel),
# checks it against the manifest, and puts Swep.app in /Applications.
set -euo pipefail
SITE="https://ipconfig.co.network/updates/swep"
GH="https://github.com/JKS-sys/swep-releases-30-sep-2026/releases/latest/download"
arch="$(uname -m)"; key="darwin-aarch64"; [ "$arch" = "x86_64" ] && key="darwin-x86_64"
[ "$(uname -s)" = "Darwin" ] || { echo "This installer is for macOS. Windows and Linux downloads: https://ipconfig.co.network/swep"; exit 1; }
tmp="$(mktemp -d)"; trap 'rm -rf "$tmp"' EXIT
manifest="$tmp/latest.json"
curl -fsSL "$SITE/latest.json" -o "$manifest" 2>/dev/null || curl -fsSL "$GH/latest.json" -o "$manifest"
version="$(sed -n 's/.*"version": *"\([^"]*\)".*/\1/p' "$manifest" | head -1)"
url="$(python3 - "$manifest" "$key" <<'PY' 2>/dev/null || true
import json, sys
m = json.load(open(sys.argv[1])); p = m["platforms"][sys.argv[2]]; print(p["url"] + "\n" + p.get("sha256", ""))
PY
)"
dl="$(printf '%s\n' "$url" | sed -n 1p)"; sha="$(printf '%s\n' "$url" | sed -n 2p)"
[ -n "$dl" ] || { echo "No build for $key in the manifest."; exit 1; }
echo "Swep $version for $arch"
curl -fL --progress-bar "$dl" -o "$tmp/swep.tar.gz"
if [ -n "$sha" ]; then
  got="$(shasum -a 256 "$tmp/swep.tar.gz" | cut -d' ' -f1)"
  [ "$got" = "$sha" ] || { echo "Checksum mismatch — download refused."; exit 1; }
fi
tar -xzf "$tmp/swep.tar.gz" -C "$tmp"
[ -d "$tmp/Swep.app" ] || { echo "The download did not contain Swep.app."; exit 1; }
if [ -d /Applications/Swep.app ]; then osascript -e 'tell application "Swep" to quit' >/dev/null 2>&1 || true; sleep 1; fi
rm -rf /Applications/Swep.app 2>/dev/null || sudo rm -rf /Applications/Swep.app
if ! mv "$tmp/Swep.app" /Applications/Swep.app 2>/dev/null; then sudo mv "$tmp/Swep.app" /Applications/Swep.app; fi
xattr -cr /Applications/Swep.app 2>/dev/null || true
echo "Installed /Applications/Swep.app — open it from Launchpad or: open -a Swep"
