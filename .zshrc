source ~/.bash_profile

export ARCHFLAGS="-arch x86_64"
export DESKTOP_SESSION="i3"
export EDITOR='nvim'
export ENABLE_CORRECTION="false"
export KEYTIMEOUT=1
export QT_QPA_PLATFORMTHEME="gtk2"
export ZSH="/home/chuck/.oh-my-zsh"
export ZSH_THEME="avit"

path+=('/home/chuck/.local/bin')
path+=('/home/chuck/.local/scripts')

plugins=(git vi-mode colorize cp tmux tmuxinator)

source $ZSH/oh-my-zsh.sh

# User configuration
# Key bindings
bindkey "^P" up-line-or-beginning-search
bindkey "^N" down-line-or-beginning-search
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

# Aliases
alias fr="cd ~/Projects/forgerock"
alias vimdiff='nvim -d'
alias vim='nvim'

# Config aliases
alias alacrittyconfig="$EDITOR ~/.config/alacritty/alacritty.yml"
alias i3config="$EDITOR ~/.config/i3/config"
alias nvimconfig="cd ~/.config/nvim/ && $EDITOR"
alias picomconfig="$EDITOR ~/.config/picom/picom.conf"
alias polyconfig="$EDITOR ~/.config/polybar/config.ini"
alias tmuxconfig="$EDITOR ~/.tmux.conf.local"
alias zshconfig="$EDITOR ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# YVM
export YVM_DIR=/home/chuck/.yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh

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

# ripgrep
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

# android studio
export ANDROID_ROOT="$home/Android"
export PATH="$HOME/Android/Sdk/emulator:$PATH"
export PATH="$HOME/Android/Sdk/tools:$PATH"

# opam configuration
test -r /home/chuck/.opam/opam-init/init.zsh && . /home/chuck/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
source /home/chuck/.config/fzf/git.zsh
