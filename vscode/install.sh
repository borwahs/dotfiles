source "$(dirname $0)/../utils/functions.sh"

info "linking VSCode configuration"

link_file ~/.dotfiles/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
link_file ~/.dotfiles/VSCode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
link_file ~/.dotfiles/VSCode/snippets/ ~/Library/Application\ Support/Code/User/snippets
