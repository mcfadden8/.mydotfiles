#!/bin/tcsh
setenv GIT_BRANCH_CMD "sh -c 'git branch 2> /dev/null' | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'"

set prompt="%m[`node_prompt`(`project`) %~] `$GIT_BRANCH_CMD`%B%#%b "
