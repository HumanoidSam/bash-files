#   _               _              
#  | |             | |             
#  | |__   __ _ ___| |__  _ __ ___ 
#  | '_ \ / _` / __| '_ \| '__/ __|
# _| |_) | (_| \__ \ | | | | | (__ 
#(_)_.__/ \__,_|___/_| |_|_|  \___|
#
# file: $HOME/.bashrc
#
# @user:	Samuel FAVIER <samuel.favier@gmail.com>
# @updated:	2011/08/27
# @revision:	1
#
# -> GNU bash, version 4.2.10(2)-release

# Bash Completion (require bash-completion)
complete -cf sudo
complete -cf man
set show-all-if-ambiguous on

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias df='pydf'
alias top='htop'
alias rm='rm -i -v'
alias cp='cp -i -v'
alias mv='mv -i -v'
alias sudo="sudo -E"

# Export
export EDITOR=vim
export HISTCONTROL=ignoreboth
export PAGER=vimpager
alias less=$PAGER
hostfqdn=`hostname --fqdn`
PATH=$PATH:$(ruby -rubygems -e "puts Gem.user_dir")/bin

PS1="[\u@\h \W]\$ "
