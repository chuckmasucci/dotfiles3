export ZSH="/home/chuck/.oh-my-zsh"
export KEYTIMEOUT=1

ZSH_THEME="avit"
ENABLE_CORRECTION="false"
QT_QPA_PLATFORMTHEME="gtk2"

path+=('/home/chuck/.local/bin')
path+=('/home/chuck/.local/scripts')

plugins=(git vi-mode colorize cp tmux tmuxinator)

source $ZSH/oh-my-zsh.sh

# User configuration
# Key bindings
bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Aliases
alias i3config="$EDITOR ~/.config/i3/config"
alias picomconfig="$EDITOR ~/.config/picom/picom.conf"
alias nvimconfig="cd ~/.config/nvim/ && $EDITOR"
alias zshconfig="$EDITOR ~/.zshrc"
alias tmuxconfig="$EDITOR ~/.tmux.conf.local"
alias polyconfig="$EDITOR ~/.config/polybar/config.ini"
alias alacrittyconfig="$EDITOR ~/.config/alacritty/alacritty.yml"
alias fr="cd ~/Projects/forgerock"
alias dy="tmuxinator start dy"
alias vimdiff='nvim -d'
alias vim='nvim'
# alias ohmyzsh="mate ~/.oh-my-zsh"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# YVM
export YVM_DIR=/home/chuck/.yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh

# Base 16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# Vi mode
function zle-keymap-select zle-line-init
{
    # change cursor shape
    if [[ -n "$TMUX" ]]; then  # tmux
      case $KEYMAP in
          vicmd)      print -n '\033[0 q';; # block cursor
          viins|main) print -n '\033[6 q';; # line cursor
      esac
    else # iTerm2
      case $KEYMAP in 
          vicmd)      print -n -- "\E]50;CursorShape=0\C-G";;  # block cursor
          viins|main) print -n -- "\E]50;CursorShape=1\C-G";;  # line cursor
      esac
    fi

    zle reset-prompt
    zle -R
}

function zle-line-finish
{
    if [[ -n "$TMUX" ]]; then # tmux
      print -n -- '\033[0 q'  # block cursor
    else # iTerm2
      print -n -- "\E]50;CursorShape=0\C-G"  # block cursor
    fi
  }

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select

# jEnv
export PATH="$HOME/.jenv/bin:$PATH"
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
