alias ls="ls -Galh"
alias please='sudo $(fc -nl -1)'
alias fuck='kill -9 $(pgrep -f $last)'

# Git branch in prompt.

parse_git_branch() {

      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

export VISUAL=vim
export EDITOR="$VISUAL"
