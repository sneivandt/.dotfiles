#!/bin/sh

# Don't check mail
unset MAILCHECK

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Default editor
export EDITOR=vim

# less
LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
LESS_TERMCAP_md=$(tput bold; tput setaf 6) # cyan
LESS_TERMCAP_me=$(tput sgr0)
LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4) # yellow on blue
LESS_TERMCAP_se=$(tput rmso; tput sgr0)
LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) # white
LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
LESS_TERMCAP_mr=$(tput rev)
LESS_TERMCAP_mh=$(tput dim)
LESS_TERMCAP_ZN=$(tput ssubm)
LESS_TERMCAP_ZV=$(tput rsubm)
LESS_TERMCAP_ZO=$(tput ssupm)
LESS_TERMCAP_ZW=$(tput rsupm)
export LESS=-imRj8
export LESS_TERMCAP_mb
export LESS_TERMCAP_md
export LESS_TERMCAP_me
export LESS_TERMCAP_so
export LESS_TERMCAP_se
export LESS_TERMCAP_us
export LESS_TERMCAP_ue
export LESS_TERMCAP_mr
export LESS_TERMCAP_mh
export LESS_TERMCAP_ZN
export LESS_TERMCAP_ZV
export LESS_TERMCAP_ZO
export LESS_TERMCAP_ZW

# Shellcheck
export SHELLCHECK_OPTS="-e SC1090 -e SC1091"

# Golang
export GOPATH=~/src/go

# virtualenvwrapper
if [ -n "$(command -vp virtualenvwrapper.sh)" ]
then
  export WORKON_HOME=~/.venv
  . virtualenvwrapper.sh
fi

# WSL
if [ -n "$(command -vp wslpath)" ]
then
  WINDRIVE=$(wslpath -a -u "$(cmd.exe /c "echo %SYSTEMDRIVE%\\" 2>/dev/null)" | sed s"/..$//")
  export WINDRIVE
  WINHOME=$(wslpath -a -u "$(cmd.exe /c "echo %USERPROFILE%\\" 2>/dev/null)" | sed s"/..$//")
  export WINHOME
fi
