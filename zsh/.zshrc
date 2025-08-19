# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# function fullscreen {
#   osascript -e "tell application '$TERM_PROGRAM' to set zoomed of front window to true"
# }

# fullscreen

if [[ $TERM_PROGRAM == "Apple_Terminal" ]]; then
  if [ -f ~/.zsh/zsh_terminal ]; then
    . ~/.zsh/zsh_terminal
  fi
elif [[ $TERM_PROGRAM == "iTerm.app" ]]; then
  if [ -f ~/.zsh/zsh_iterm ]; then
    . ~/.zsh/zsh_iterm
  fi
fi

export PATH=$PATH:/Users/jaewonlee/.spicetify

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.3.5 # run chruby to see actual version

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda deactivate
