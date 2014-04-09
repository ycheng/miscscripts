BINDIR=/root/bin
adb shell mount -o rw,remount /
sleep 1
adb shell mkdir $BINDIR

# strace binary from trusty deb
adb push bin/strace /usr/bin/
adb push env.sh /root/

# adb push adb-profile.sh $DEVDIR
# adb push inst-dev-pkgs.sh $DEVDIR
# adb push ddebs.list $DEVDIR
# adb push dot.quiltrc-dpkg /root/.quiltrc-dpkg
