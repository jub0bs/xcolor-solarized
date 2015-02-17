PKGNAME="xcolor-solarized"
if [ -f ${PKGNAME}.tar.gz ]; then
    rm ${PKGNAME}.tar.gz
fi
make all clean
ctanify ${PKGNAME}.ins ${PKGNAME}.pdf README.md makefile
