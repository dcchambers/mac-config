# mac-config
Brewfile and scripts to set up fresh a fresh Mac install.

- Installs xcode command line tools.
- Installs Homebrew and tools/apps listed in the [Brewfile](Brewfile).
- Downloads and configures my
  [Dotfiles](https://github.com/dcchambers/dotfiles).

## Usage

- Clone this repo to your new mac (or just download a `.zip` if you don't have
  `git` yet).
- Open a terminal and navigate to the directory that has the `setup.sh` and
  `Brewfile` files.
- Run `./setup.sh` and follow the instructions.

## Brewfile

- If you just want to install the applications listed in the `Brewfile`, run
  this command (with Homebrew installed): `brew bundle install` from the
  directory with the `Brewfile`.
- `Brewfile.personal` contains tools and applications I only want installed on
  my personal machine. `brew bundle install --file Brewfile.personal`
