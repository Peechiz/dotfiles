# dotfiles
please, I need my shortcuts I am begging you

# Usage

likely, you're starting here to mass install a bunch of stuff

this is probably easier using `stow`

```
# install homebrew first:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
brew install stow;
git clone git@github.com:Peechiz/dotfiles.git;
cd dotfiles;
stow .;
brew bundle install --file ~/Brewfile
```
