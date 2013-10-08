DEVDIR=/root/dev
adb shell mkdir $DEVDIR
adb push adb-profile.sh $DEVDIR
adb push inst-dev-pkgs.sh $DEVDIR
adb push ddebs.list $DEVDIR
