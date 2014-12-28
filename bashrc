# If not running interactivly, dont't do anything
[[ $- != *i* ]] && return

# Dont check mail
unset MAILCHECK

# Prompt
PS1="\u@\h:\[\e[0;33m\]\w\n\[\e[0m\]\$ "

# Aliases
alias sudo="sudo "
alias ls="ls --color"
alias la="ls -a --color"
alias ll="ls -lh --color"
alias sl="ls"
alias ..="cd .."
alias cl="clear"
alias vi="vim"
