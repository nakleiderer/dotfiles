export PATH="/usr/local/sbin:/usr/local/opt/openjdk/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
[ -x "$(command -v npm)" ] && export NODE_PATH=$NODE_PATH:`npm root -g`

export GPG_TTY=$(tty)

if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use "lts/*"
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

eval "$(starship init zsh)"

BLITZ_AC_ZSH_SETUP_PATH=/Users/nicolas/Library/Caches/@blitzjs/cli/autocomplete/zsh_setup && test -f $BLITZ_AC_ZSH_SETUP_PATH && source $BLITZ_AC_ZSH_SETUP_PATH; # blitz autocomplete setup

export PATH="/Users/nicolas/.deno/bin:$PATH"