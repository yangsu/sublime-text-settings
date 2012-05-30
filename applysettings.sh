#!/bin/bash
function applySettings() {
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "applysettings.sh"  -av . ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
}
read -p "This may overwrite existing sublime text settings. Are you sure? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  applySettings
fi