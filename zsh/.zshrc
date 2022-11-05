verify_and_source(){
  if [ -f $1 ];then
    source $1
  fi
}

prepend_path(){
  export PATH="$1:$PATH"
}

local brew_wrap_path="$(brew --prefix)/etc/brew-wrap"
local asdf_path="$(brew --prefix asdf)/libexec/asdf.sh"
local google_cloud_components_path="$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"

verify_and_source $brew_wrap_path
verify_and_source $asdf_path
verify_and_source $google_cloud_components_path

prepend_path "/usr/local/sbin"
prepend_path "/usr/local/opt/openjdk/bin"
prepend_path "/Users/$USERNAME/.deno/bin"
prepend_path "/usr/local/opt/llvm/bin"

export GPG_TTY=$(tty)
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

alias nrd='npm run dev'

if [ -x "$(command -v starship)" ]; then
  eval "$(starship init zsh)"
fi

