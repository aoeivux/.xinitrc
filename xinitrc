#Display
xrandr --newmode "1920x1080_144.00"  452.50  1920 2088 2296 2672  1080 1083 1088 1177 -hsync +vsync
xrandr --addmode Virtual-1  "1920x1080_144.00"
xrandr --output Virtual-1 --mode "1920x1080_144.00"

##fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx &


##wallpaper
#auto change the wallpaper with feh
#!/bin/sh
#feh --bg-fill --randomize ~/.wallpaper/* & ##参考arch wiki
feh --bg-max --randomize ~/.wallpaper/* &

while true; do
	    find ~/.wallpaper -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
		            shuf -n1 -z | xargs -0 feh --bg-scale
	        sleep 3m
done &

##
#解决java idea 灰屏不能进入的问题
wmname LG3D


#date
while true; do
   xsetroot -name "$( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &

#acpi


##vol


##渲染
xcompmgr -c &



exec dwm
