#!/usr/bin/env bash
set -e
TARGET=/usr/local/bin/flutter-helper
echo "Installing to $TARGET"
sudo cp scripts/flutter-helper "$TARGET"
sudo chmod +x "$TARGET"
echo "Installed."
