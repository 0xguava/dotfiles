
#autoload -U colors && colors
source ~/.cache/wal/colors.sh

PS1="[%F{$color4}%n%f@%F{$color2}%m%f %F{$color5}%~%f] %(!.#.$) "


HISTFILE=~/.cache/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000

autoload -U compinit && compinit
zstyle ':completion:*' menu select


bindkey -e
bindkey ";5C" forward-word
bindkey ";5D" backward-word
#export KEYTIMEOUT=1
bindkey "~" delete-char

function precmd () {
    print -Pn -- '\e]2;%n@%m %~\a'
}

export PATH=$PATH:~/.local/bin/
export EDITOR=nvim

[ -f "$HOME/.config/zsh/aliasrc" ] && source "$HOME/.config/zsh/aliasrc"

function zle-line-init () { echoti smkx }
function zle-line-finish () { echoti rmkx }
zle -N zle-line-init
zle -N zle-line-finish

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=160'

