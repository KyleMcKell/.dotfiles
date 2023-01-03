export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell" # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode auto # update automatically without asking

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="mm/dd/yyyy"

plugins=(git nvm)

zstyle ':omz:plugins:nvm' autoload yes

source $ZSH/oh-my-zsh.sh

alias nv="nvim ."
alias luamake=/home/kyle/code/langs/lua-language-server/3rd/luamake/luamake

export EDITOR='nvim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PNPM_HOME="/home/kyle/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

export GOROOT=/usr/local/go
export GOPATH=$HOME/code
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH-e 

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

keep_current_path() {
  printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"
}
precmd_functions+=(keep_current_path)
