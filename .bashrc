#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#Set alias
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc"

test -r ~/.dir_colors && eval "$(dircolors ~/.dir_colors)"
source ~/.config/bashconf/git-prompt.sh 

check_git_branch() {
	[ -d "$PWD/.git" ] && printf "$(__git_ps1 | tr -d '()')" && printf "  "
}

#PS1=""
#PS1='$(git_branch)[\u@\h \W]\$ '

shopt -u promptvars
set -o vi
PROMPT_COMMAND=check_git_branch
PS1="<\u%\W> "
#$(git_branch)  

export PATH=$PATH:$GOROOT/bin
export GOPATH=$GOPATH:/home/kyle/Documents/Code/go
