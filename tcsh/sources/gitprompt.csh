#!/bin/tcsh
setenv GIT_BRANCH_CMD "sh -c 'git branch --no-color 2> /dev/null' | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'"
set prompt="%m:%~ `$GIT_BRANCH_CMD`%B%#%b "

