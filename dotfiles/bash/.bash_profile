stty erase 

if [ -e $HOME/.mydotfiles/bashenv/bash_globals ]; then
    . $HOME/.mydotfiles/bashenv/bash_globals
fi

if [ -e $HOME/.mydotfiles/bashenv/modules.$MJM_HOST ]; then
    . $HOME/.mydotfiles/bashenv/modules.$MJM_HOST
fi

if [ -e $HOME/.bashrc ]; then
	. $HOME/.bashrc
fi

for d in $HOME/.bin/$MJM_ARCH; do
  if [ ! -d $d ]; then
    if [ ! -h $d ]; then
      mkdir -p $d
    fi
  fi
done

export LD_LIBRARY_PATH=$HOME/.session/install/$MJM_ARCH/install/lib:$HOME/.session/install/$MJM_ARCH/install2/lib:$LD_LIBRARY_PATH
export PATH=$HOME/.session/install/$MJM_ARCH/install/bin:$HOME/.session/install/$MJM_ARCH/install2/bin:$MJM_BIN:$PATH:/usr/tcetmp/bin

export LIBELF_ROOT_DIR=$MJM_BIN/libelf
export LIBFFI_ROOT_DIR=$MJM_BIN/libffi

ulimit -c unlimited
shopt -s direxpand


