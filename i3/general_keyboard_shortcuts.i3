# Basic Bindings
bindsym	$mod+Return		    exec $term
bindsym $mod+Shift+e 		exec prompt "Exit i3" "i3-msg exit"
bindsym Mod1+q			    [con_id="__focused__" instance="^(?!dropdown|pythonshell|conky-dropdown).*$"] kill
bindsym $mod+Shift+r		exec $DOTFILES/i3/reload.sh
bindsym $mod+d			    exec rofi -show drun -eh 2 -padding 50 -bw 0 -lines 5 -width 100% -location 1
bindsym $mod+Shift+x		exec i3lock-fancy -n -p
bindsym $mod+m			    move scratchpad

# layout
bindsym $mod+s			    layout stacking
bindsym $mod+w			    layout tabbed
bindsym	$mod+e			    layout toggle split
bindsym $mod+f			    fullscreen toggle
bindsym $mod+v			    split toggle
bindsym $mod+space 		    focus mode_toggle
bindsym $mod+Shift+space	floating toggle

# change focus
bindsym $mod+h 			    focus left
bindsym $mod+j			    focus down
bindsym $mod+k 			    focus up
bindsym $mod+l		 	    focus right
bindsym $mod+Left 		    focus left
bindsym $mod+Down 		    focus down
bindsym $mod+Up 		    focus up
bindsym $mod+Right 		    focus right

# move focused window
bindsym $mod+Shift+h 		move left
bindsym $mod+Shift+j 		move down
bindsym $mod+Shift+k 		move up
bindsym $mod+Shift+l	 	move right
bindsym $mod+Shift+Left 	move left
bindsym $mod+Shift+Down 	move down
bindsym $mod+Shift+Up 		move up
bindsym $mod+Shift+Right 	move right

# floating move with mouse and $mod
floating_modifier $mod

# Media Controls
bindsym $mod+F2             exec playerctl play-pause
bindsym $mod+F1             exec playerctl previous
bindsym $mod+F3             exec playerctl next

