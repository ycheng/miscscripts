DEVDIR=/root/dev
adb shell mount -o rw,remount /
sleep 1
adb shell mkdir $DEVDIR
adb push adb-profile.sh $DEVDIR
adb push inst-dev-pkgs.sh $DEVDIR
adb push ddebs.list $DEVDIR
adb push dot.quiltrc-dpkg /root/.quiltrc-dpkg
