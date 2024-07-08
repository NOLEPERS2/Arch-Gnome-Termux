#!/data/data/com.termux/files/usr/bin/bash

#killer termux x11 process
kill -9 $(pgrep -f "termux.x11") 2>/dev/null

#starting pulse audio server
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1

#prepare termux-x11 session
export XDG_RUNTIME_DIR=${TMPDIR}
termux-x11 :0 >/dev/null &

#Wait a bit until termux-x11 gets started.
sleep 3

proot-distro login archlinux  --shared-tmp -- /bin/bash -c 'export DISPLAY=:0 XDG_RUNTIME_DIR=${TMPDIR} PULSE_SERVER=127.0.0.1 XDG_CURRENT_DESKTOP="GNOME" && rm -rf /run/dbus/pid && dbus-daemon --system && su - root -c "env DISPLAY=:0 dbus-launch gnome-shell --x11"'

exit 0

#this command modified by nolepers
