echo lightdm

sudo -H -u lightdm dbus-launch --exit-with-session gsettings list-recursively org.gnome.settings-daemon.plugins.power |grep sleep-inactive-ac-type

sudo -H -u lightdm dbus-launch --exit-with-session gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type nothing

sudo -H -u lightdm dbus-launch --exit-with-session gsettings list-recursively org.gnome.settings-daemon.plugins.power |grep sleep-inactive-ac-type


echo current user

dbus-launch --exit-with-session gsettings list-recursively org.gnome.settings-daemon.plugins.power |grep sleep-inactive-ac-type

dbus-launch --exit-with-session gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type nothing

dbus-launch --exit-with-session gsettings list-recursively org.gnome.settings-daemon.plugins.power |grep sleep-inactive-ac-type

