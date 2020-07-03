export PATH="./bin:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH"

PLUGINS_DIR=~/.dotfiles/zsh/plugins

if [[ -a "$PLUGINS_DIR/zsh-z" ]]
then
  source "$PLUGINS_DIR/zsh-z/zsh-z.plugin.zsh"
fi
