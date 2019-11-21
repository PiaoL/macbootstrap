plugins=(git extract encode64 urltools)

ZSH=$HOME/.oh-my-zsh

ZSH_THEME="half-life"
PROMPT=$'%{$purple%}%n%{$reset_color%} in %{$limegreen%}%~%{$reset_color%}$(ruby_prompt_info " with%{$fg[red]%} " v g "%{$reset_color%}")$vcs_info_msg_0_%{$orange%}%{$reset_color%} at %{$hotpink%}%* %{$orange%}λ%{$reset_color%} '

source $ZSH/oh-my-zsh.sh

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**'
zstyle ':completion:*:*' ignored-patterns '*ORIG_HEAD'

fpath=(/usr/local/share/zsh-completions $fpath)
compinit -u

HISTCONTROL=ignorespace
HISTFILE=~/.histfile
HISTSIZE=10000000
HISTFILESIZE=10000000
SAVEHIST=10000000

BS_ZSH_BASE="$HOME/.macbootstrap"

source $BS_ZSH_BASE/basic.sh
source $BS_ZSH_BASE/zsh-config/common.sh
source $(brew --prefix)/etc/profile.d/autojump.sh

fpath=(/usr/local/share/zsh-completions $fpath)
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH:$M2_HOME/bin
export GOPATH=/Users/piao/go
export PATH=/usr/local/opt/coreutils/libexec/gnubin:/opt/iOSOpenDev/bin:/opt/local/bin:/usr/local/bin:/Users/piao/.rvm/gems/ruby-2.2.0/bin:/Users/piao/.rvm/gems/ruby-2.2.0@global/bin:/Users/piao/.rvm/rubies/ruby-2.2.0/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/piao/.rvm/bin:/Users/piao/Library/Android/sdk/tools:/Users/piao/Library/Android/sdk/platform-tools:/Users/piao/.rvm/bin:/bin:/Users/piao/go/bin:/usr/local/go/bin

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
