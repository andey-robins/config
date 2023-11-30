#!/bin/zsh

echo "This script will put configs in the right places."
echo "It will not install applications. See install.sh for"
echo "A list of applications to install."

# initialize spicetify. config info should be brought
# in with this repo, but then we still need to apply
# plug into the local spotify install
spicetify
spicetify backup apply

# install spicetify themes
git clone --depth=1 https://github.com/spicetify/spicetify-themes.git
cp -r spicetify-themes/* ~/.config/spicetify/Themes/

# apply themeing info
spicetify config current_theme text
spicetify config color_scheme CatppuccinLatte

spicetify apply

# install nvchad for neovim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
alias vim='nvim'
