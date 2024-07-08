#!/data/data/com.termux/files/usr/bin/bash

kill -9 $(pgrep -f "termux.x11") 2>/dev/null

pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1

export XDG_RUNTIME_DIR=${TMPDIR}
termux-x11 :0 >/dev/null &

sleep 3

proot-distro login archlinux --shared-tmp -- /bin/bash -c 'export DISPLAY=:0 XDG_RUNTIME_DIR=${TMPDIR} PULSE_SERVER=127.0.0.1 XDG_CURRENT_DESKTOP="GNOME" && rm -rf /run/dbus/pid && dbus-daemon --system && su - root -c "env DISPLAY=:0 dbus-launch gnome-shell --x11"'

exit 0