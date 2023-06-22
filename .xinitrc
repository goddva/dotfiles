#export QT_STYLE_OVERRIDE=gtk2
export QT_QPA_PLATFORMTHEME=qt5ct
export GTK2_RC_FILES=/usr/share/themes/Arc-Dark/gtk-2.0/gtkrc 
export GTK_THEME=Arc-Dark

# Load nvidia settings
nvidia-settings --load-config-only

xrdb ~/.Xresources 
# exec xcompmgr -c &

# Key ring
eval $(gnome-keyring-daemon --start)
export $(gnome-keyring-daemon --start)
dbus-update-activation-environment --systemd DISPLAY

exec dunst -config ~/.config/i3/dunstrc &
exec i3
# exec dwm
