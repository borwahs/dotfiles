source "$(dirname $0)/../utils/functions.sh"

if [ "$(uname -s)" == "Darwin" ]
then
  info "linking VSCode configuration (macOS)"

  link_file ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
  link_file ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
  link_file ~/.dotfiles/vscode/snippets ~/Library/Application\ Support/Code/User
fi
