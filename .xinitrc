#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

#For IBus:

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus#Bar panel for bspwm
#ibus-daemon --xim &

#export PANEL_FIFO="/tmp/panel-fifo"
xrdb -load ~/.Xresources &

#feh --bg-scale /home/damian/Pictures/wallpaper
#sxhkd &
#setxkbmap -layout latam &
#compton -cr 15 -o 0.50 -t -10 -l -20 -fD 5 &
#exec herbstluftwm
#exec wmaker
#exec i3
#exec bspwm
#exec awesome
exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

