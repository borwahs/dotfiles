script_dir=${0%/*}

if [[ -a "${script_dir}/../zsh/plugins/zsh-nvm" ]]
then
  source "${script_dir}/../zsh/plugins/zsh-nvm/zsh-nvm.plugin.zsh"
else
  echo "✗ nvm is not installed; run installer in dotfiles"
fi
