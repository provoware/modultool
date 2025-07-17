#!/bin/bash
# tools/build_packages.sh - baut .deb und AppImage fuer Modultool

set -e
VERSION="1.0.0"
DEB_DIR="build/package/modultool"
APPDIR="build/appimage/Modultool.AppDir"

# Verzeichnisse vorbereiten
rm -rf build
mkdir -p "$DEB_DIR/DEBIAN" "$APPDIR"

cat > "$DEB_DIR/DEBIAN/control" <<EOC
Package: modultool
Version: $VERSION
Section: utils
Priority: optional
Architecture: all
Maintainer: example
Description: Modulares Content-Creation-Tool
EOC

# Dateien kopieren
rsync -a --exclude='.git' ./ "$DEB_DIR/usr/share/modultool/"

# .deb erstellen
if command -v dpkg-deb >/dev/null 2>&1; then
  dpkg-deb --build "$DEB_DIR" "modultool_${VERSION}.deb"
  echo "✅ DEB-Paket erstellt."
else
  echo "⚠️ dpkg-deb nicht installiert – DEB-Paket wurde nicht erstellt"
fi

# AppImage erstellen, wenn appimagetool vorhanden ist
if command -v appimagetool >/dev/null 2>&1; then
  rsync -a --exclude='.git' ./ "$APPDIR/usr/share/modultool/"
  (cd build/appimage && appimagetool Modultool.AppDir ../../modultool_${VERSION}.AppImage)
  echo "✅ AppImage erstellt."
else
  echo "⚠️ appimagetool nicht installiert – AppImage wurde nicht erstellt"
fi
