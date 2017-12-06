export QT_STYLE_OVERRIDE=gtk2
xrdb ~/.Xresources 
exec dunst -config ~/.config/i3/dunstrc &
exec i3
