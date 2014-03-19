# Linux specific config

if which gvim >/dev/null; then
   export VIM=gvim
fi

if [[ -f /etc/debian_version ]]; then
   # Debian
   plugins+=(debian sudo)
else
   # ArchLinux
   plugins+=(archlinux kate sudo systemd)
fi
