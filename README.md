# Fix cockpit missing fonts (band-aid fix)

```bash
sudo su

curl -sSL https://github.com/danielschwab/fix_cockpit_fonts/raw/refs/heads/main/fix_cockpit_fonts.sh | bash

systemctl restart cockpit
```