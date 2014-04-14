# Linux specific config

export VIMRUNTIME=/usr/share/vim

if [[ -f /etc/debian_version ]]; then
   # Debian
   plugins+=(debian sudo)
else
   # ArchLinux
   plugins+=(archlinux kate sudo systemd)
fi
