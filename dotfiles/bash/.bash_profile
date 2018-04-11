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

for d in $INSTALLDIR $INSTALLDIR2 $BUILDDIR $SRCDIR $HOME/.bin/$MJM_ARCH; do
  if [ ! -d $d ]; then
    if [ ! -h $d ]; then
      mkdir -p $d
    fi
  fi
done

export LD_LIBRARY_PATH=$INSTALLDIR/lib:$INSTALLDIR2/lib:$LD_LIBRARY_PATH
export PATH=$INSTALLDIR/bin:$INSTALLDIR2/bin:$MJM_BIN:$PATH:/usr/tcetmp/bin

export LIBELF_ROOT_DIR=$MJM_BIN/libelf
export LIBFFI_ROOT_DIR=$MJM_BIN/libffi

ulimit -c unlimited
shopt -s direxpand

