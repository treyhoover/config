
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f `brew --prefix`/etc/bash_completion ]; then
	GIT_PS1_SHOWDIRTYSTATE=true
	GIT_PS1_SHOWUNTRACKEDFILES=true
	PS1='\u: \W$(__git_ps1 "[%s]") \$ '
	PS1='\[\e[32m\]\u: \W$(__git_ps1 "[%s]") \$\[\e[m\] '
	. `brew --prefix`/etc/bash_completion
fi

#warn about overwrites
alias cp="cp -i"
alias mv="mv -i"

#general assembly
alias ga="cd ~/Dev/General_Assembly"
alias myhw="cd ~/Dev/General_Assembly/wdidc4-hw/students/trey"
alias wdidc4="cd ~/Dev/General_Assembly/wdidc4"
alias wdidc4-hw="cd ~/Dev/General_Assembly/wdidc4-hw"
alias projects="cd ~/Dev/General_Assembly/projects"

#show list view, include hidden files
alias ls="ls -al"

#trash
move_to_trash () {
    mv "$@" ~/.trash
}

alias trash="move_to_trash"

#git
alias gl="git log --all --decorate --graph --pretty=format:'%C(yellow)%h%Creset %C(auto)%d%Creset %Cblue%ar%Creset %Cred%an%Creset %n%w(72,1,2)%s'"