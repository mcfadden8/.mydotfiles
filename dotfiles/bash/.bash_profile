stty erase 

if [ -e $HOME/.mydotfiles/bashenv/bash_globals ]; then
    . $HOME/.mydotfiles/bashenv/bash_globals
fi

if [ -e $HOME/.bashrc ]; then
	. $HOME/.bashrc
fi

if [ -e $HOME/.mydotfiles/bashenv/modules.$MJM_HOST ]; then
    . $HOME/.mydotfiles/bashenv/modules.$MJM_HOST
elif [ -e $HOME/.mydotfiles/bashenv/modules.default ]; then
    . $HOME/.mydotfiles/bashenv/modules.default
fi

if [ ! -d $INSTALLDIR ]; then
  mkdir -p $INSTALLDIR
fi
if [ ! -d $BUILDDIR ]; then
  mkdir -p $BUILDDIR
fi
if [ ! -d $SRCDIR ]; then
  mkdir -p $SRCDIR
fi
if [ ! -d $HOME/.bin/$MJM_ARCH ]; then
  mkdir -p $HOME/.bin/$MJM_ARCH
fi

export LD_LIBRARY_PATH=$INSTALLDIR/lib:$LD_LIBRARY_PATH
export PATH=$INSTALLDIR/bin:$HOME/.bin/$MJM_ARCH:$PATH

ulimit -c unlimited
set -u
