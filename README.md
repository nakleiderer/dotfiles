# dotfiles

## Installation

As a prerequisite to installation, `dockutil` needs to be installed first. There's currently no known automated way to install `dockutil`, so check https://github.com/kcrawford/dockutil for installation instructions.

### Clone and install

```sh
git clone git@github.com:nakleiderer/dotfiles.git
cd dotfiles
./install
```

### Install with Bootstrap script

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/nakleiderer/dotfiles/master/bootstrap.sh)"
```

## Upgrade

Upgrade git submodules: `git submodule update --init --remote`

## Credits

Created with [dotbot](https://github.com/anishathalye/dotbot)
