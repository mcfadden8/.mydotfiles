#!/bin/zsh
# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: https://bbs.archlinux.org/viewtopic.php?pid=521888#p521888

PROMPT=$'[\e[01;33;7m${MJM_HOST}\e[0m $(node)] [%~] $(git_prompt_info)
$ '
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '
