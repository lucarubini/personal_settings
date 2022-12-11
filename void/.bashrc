# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vi=vim
alias ll='ls -lath'
PS1='[\u@\h \W]\$ '

today()
{
    echo This is a `date +"%A %d in %B of %Y (%r)"` return
}

myhelp()
{
	cat $HOME/.myhelp.txt
}
