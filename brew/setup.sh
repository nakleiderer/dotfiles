which -s brew
if [[ $? != 0 ]] ; then
    /bin/bash -c "$(curl -fsSL https://raw.github.com/rcmdnk/homebrew-file/install/install.sh)"
fi

brew upgrade
brew file install
brew cleanup