#!/bin/zsh

# setup and install spicetify
# also grab themes and launch

if [[ $(uname) == "Darwin" ]]; then
  brew install spicetify/homebrew-tap/spicetify-cli
fi

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

