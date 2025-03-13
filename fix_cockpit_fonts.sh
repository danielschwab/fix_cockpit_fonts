#!/usr/bin/env bash

echo Fixing cockpit fonts

mkdir -p /usr/share/cockpit/base1/fonts
curl -sSL https://github.com/danielschwab/fix_cockpit_fonts/raw/refs/heads/main/fonts/fontawesome.woff -o /usr/share/cockpit/base1/fonts/fontawesome.woff
curl -sSL https://github.com/danielschwab/fix_cockpit_fonts/raw/refs/heads/main/fonts/glyphicons.woff -o /usr/share/cockpit/base1/fonts/glyphicons.woff
curl -sSL https://github.com/danielschwab/fix_cockpit_fonts/raw/refs/heads/main/fonts/patternfly.woff -o /usr/share/cockpit/base1/fonts/patternfly.woff

mkdir -p /usr/share/cockpit/static/fonts
curl -sSL https://github.com/danielschwab/fix_cockpit_fonts/raw/refs/heads/main/fonts/OpenSans-Semibold-webfont.woff -o /usr/share/cockpit/static/fonts/OpenSans-Semibold-webfont.woff

mkdir -p /usr/share/cockpit/zfs/assets/fonts/RedHatDisplay
cp -v /usr/share/cockpit/static/fonts/*Display*.woff2 /usr/share/cockpit/zfs/assets/fonts/RedHatDisplay/
for f in /usr/share/cockpit/zfs/assets/fonts/RedHatDisplay/*; do mv -v -- "$f" "${f%.woff2}.woff"; done

mkdir -p /usr/share/cockpit/zfs/assets/fonts/RedHatText/
cp -v /usr/share/cockpit/static/fonts/*Text*.woff2 /usr/share/cockpit/zfs/assets/fonts/RedHatText/
for f in /usr/share/cockpit/zfs/assets/fonts/RedHatText/*; do mv -v -- "$f" "${f%.woff2}.woff"; done

echo Done