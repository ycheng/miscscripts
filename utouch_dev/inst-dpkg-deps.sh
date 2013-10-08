# usage: $0 debian/control
#
# mk-build-deps --install --tool "apt-get -y" --build-dep debian/control
mk-build-deps --install --tool "apt-get -y" --build-dep $1
