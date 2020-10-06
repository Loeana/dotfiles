# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias github="cd ~/Projekty/loeana.github.io"

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

#PS1="\[\033[36m\][\[\033[m\]\[\033[1;33m\]\u@\h\[\033[m\] \[\033[32m\]\W\[\033[m\]\[\033[36m\]]\[\033[m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export PS1="\[$txtblu\]\u@\h \[$txtpur\]\W \[$txtgrn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

alias gitch="git checkout"
alias openandroid="~/Android/Sdk/platform-tools/adb tcpip 5555"
alias connectandroid="~/androidconnect.sh"

alias rebase="~/scripts/rebase.sh"

function _completion() {
 	local cur prev opts
 	COMPREPLY=()
 	cur="${COMP_WORDS[COMP_CWORD]}"
 	prev="${COMP_WORDS[COMP_CWORD-1]}"
 	opts=$(git branch | cut -c 3-);

 	if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
 		COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
 		return 0
 	fi

 }

complete -F _completion rebase
_gitpull_complete() {
    branches=$(git branch -l | cut -c3-)
    COMPREPLY=($(compgen -W "$branches" -- "$2"))


