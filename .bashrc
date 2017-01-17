# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Set up rust source dir
export RUST_SRC_PATH=~/.multirust/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

PS1="\[\033[36m\][\[\033[m\]\[\033[1;33m\]\u@\h\[\033[m\] \[\033[32m\]\W\[\033[m\]\[\033[36m\]]\[\033[m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Set SSH to use gpg-agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK=/run/user/$UID/gnupg/S.gpg-agent.ssh
fi
export GPG_TTY=`tty`

PATH=$PATH:/opt/callibre
export PATH

alias g++='g++ -Wall -Wextra -pedantic -std=c++14'
alias gcc='gcc -Wall -Wextra -pedantic'
alias vim='nvim'
alias python='ipython3'
alias python2='ipython2'
alias gpg='gpg2'
