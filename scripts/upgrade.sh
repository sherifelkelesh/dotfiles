#!/usr/bin/ bash

#
# Upgrade
# --------------------------------------------------------------------

printf "Updating Dotfiles...\n"
cd "$DOTFILES"
if git pull
then
	printf "Dotfiles has been updated.\n"
	source ~/.zshrc
else
	printf "There was an error updating.\n"
fi
cd -
