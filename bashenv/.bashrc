# Source global definitions

#
# MJM_HOST has been defined and exported by .bash_profile
#

if [ -f $HOME/bashenv/rc.$MJM_HOST ]; then
    . $HOME/bashenv/rc.$MJM_HOST
elif [ -f $HOME/bashenv/rc.default ]; then
    . $HOME/bashenv/rc.default
fi
