#
# ~/.bashrc
#

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

. "$HOME/.local/bin/env"

alias claude-mem='$HOME/.bun/bin/bun "$HOME/.claude/plugins/cache/thedotmack/claude-mem/12.1.0/scripts/worker-service.cjs"'
