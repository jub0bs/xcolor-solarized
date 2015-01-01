# Please submit changes to the git repository
# https://github.com/Jubobs/xcolor-solarized.git

# Maintainer: Alberto Fanjul <albertofanjul@gmail.com>

pkgname=xcolor-solarized
pkgver=1.0
pkgrel=1
license=('GPL')
depends=('texlive-bin' 'texlive-core' 'texlive-latexextra')
pkgdesc="A LaTeX package for solarized colorset"
url="https://github.com/Jubobs/xcolor-solarized"
arch=('any')
install=texlive-xcolor-solarized.install
source=('git+https://github.com/Jubobs/xcolor-solarized.git')
md5sums=('SKIP')

build()
{
	mkdir -p $pkgdir/usr/share/texmf-dist/tex/latex/xcolor-solarized
	cp $srcdir/$pkgname/xcolor-solarized.sty $pkgdir/usr/share/texmf-dist/tex/latex/xcolor-solarized
}
