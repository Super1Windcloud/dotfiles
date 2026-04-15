# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

bindkey '^H' backward-kill-word

plugins=(git zsh-autosuggestions)
source "$ZSH/oh-my-zsh.sh"

eval "$(zoxide init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export ANDROID_HOME=/opt/android-sdk
export ANDROID_SDK_ROOT=/opt/android-sdk
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$PATH"
export PATH="/opt/android-sdk/cmdline-tools/latest/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export JAVA_HOME=/usr/lib/jvm/default
export SPARK_HOME=/opt/apache-spark
export PATH="$SPARK_HOME/bin:$SPARK_HOME/sbin:$PATH"

. "$HOME/.local/bin/env"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$PATH:$HOME/go/bin"

alias claude-mem='$HOME/.bun/bin/bun "$HOME/.claude/plugins/cache/thedotmack/claude-mem/12.1.0/scripts/worker-service.cjs"'
