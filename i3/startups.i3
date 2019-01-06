# All programs which should start at the beginning should be put here

exec_always --no-startup-id feh --bg-scale $DOTFILES/wallpapers/current.png

exec_always --no-startup-id compton

exec_always --no-startup-id dunst

exec_always --no-startup-id $DOTFILES/polybar/launch.sh

exec xrandr --output DP-1 --auto --output HDMI-3 --auto --left-of DP-1 &
exec setxkbmap -layout de &

