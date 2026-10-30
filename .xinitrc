xrdb -merge .Xresources

exec flameshot &
exec gentoo-pipewire-launcher &
exec telegram-desktop &
exec firefox-bin &
#exec feh --bg-scale documents/pictures/thinkpad_gruvbox-dark.png &
exec xss-lock slock &

exec setxkbmap -layout us,ru -option grp:caps_toggle &
exec /home/ngd/.local/bin/kbdd &

while true; do
    slstatus &
    SLSTATUS_PID=$!
    
    dwm
    
    kill $SLSTATUS_PID
done
