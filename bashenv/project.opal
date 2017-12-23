#!/bin/bash
if [ -f /etc/genders ]; then
    PS3='Please enter session choice: '
    options=("umap" "ompd")
    select opt in "${options[@]}"
    do
      case $opt in
          "umap")
              export MJM_SESSION=$opt
              break
              ;;
          "ompd")
              export MJM_SESSION=$opt
              break
              ;;
          *)
              export MJM_SESSION="umap"
              break
              ;;
      esac
    done
    export INSTALLDIR=$HOME/$MJM_SESSION/install/$MJM_ARCH/install
    export BUILDDIR=$HOME/$MJM_SESSION/build/$MJM_ARCH
    export SRCDIR=$HOME/$MJM_SESSION/src
else
    export MJM_SESSION=$TMPDIR
fi

