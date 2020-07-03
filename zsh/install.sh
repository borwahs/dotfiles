#!/usr/bin/env zsh

source "$(dirname $0)/../utils/functions.sh"

PLUGINS_DIR=~/.dotfiles/zsh/plugins

install_z_plugin () {
  if ! [[ -a "$PLUGINS_DIR/zsh-z" ]]
  then
    git clone https://github.com/agkozak/zsh-z.git "$PLUGINS_DIR/zsh-z"
    if [[ -a "$PLUGINS_DIR/zsh-z" ]]
    then
    source "$PLUGINS_DIR/zsh-z/zsh-z.plugin.zsh"
    fi

    success 'z plugin installed'
  else
    info 'SKIPPING: z is already installed'
  fi
}

echo '> setup and configure zsh plugins'

install_z_plugin
