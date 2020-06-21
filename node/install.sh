#!/usr/bin/env zsh

source "$(dirname $0)/../utils/functions.sh"

script_dir=${0%/*}
nvm_install_path="${script_dir}/../zsh/plugins/zsh-nvm"

install_nvm () {
  local will_install=

  if ! [[ -a "${nvm_install_path}" ]]
  then
    git clone https://github.com/lukechilds/zsh-nvm.git "${nvm_install_path}"
    source "${nvm_install_path}/zsh-nvm.plugin.zsh"

    success 'zsh-nvm and nvm installed'
  else
    if ! command_exists "nvm";
    then
      if ! [[ -a ~/.nvm ]]
      then
        will_install=true;
        info '> nvm will be installed.'
      fi

      # source nvm so it can be used in rest of script
      source "${nvm_install_path}/zsh-nvm.plugin.zsh"

      if [[ "$will_install" == "true" ]]
      then
        echo 'nvm installed'
      else
        info 'SKIPPING : zsh-nvm and nvm already installed'
      fi
    else
      info 'SKIPPING : zsh-nvm and nvm already installed'
    fi
  fi
}

install_node () {
  if command_exists "node" -a command_exists "nvm";
  then
    info 'SKIPPING : node is already installed'
  else
    if command_exists "nvm";
    then
      nvm install --lts
      nvm use default
      success 'installed: node @ lts'
    else
      info '! unable to find nvm; cannot install node'
    fi
  fi
}

install_yarn () {
  if [ ! -d ~/.yarn ]
  then
    curl -o- -L https://yarnpkg.com/install.sh | bash

    # remove the auto added export of yarn to path
    # NOTE: use .symlink file as sed won't follow symlinks in BSD
    sed -i '' "/yarn/d" "${script_dir}/../zsh/zshrc.symlink"
    # remove last blank line
    sed -i '' -e '${/^$/d;}' "${script_dir}/../zsh/zshrc.symlink"

    success 'installed: yarn'
  else
    info 'SKIPPING : yarn is already installed'
  fi
}

install_npm_dependencies () {
  if command_exists "npm";
  then
    # TODO: handle if error
    while IFS= read -r line
    do
      npm install $line --global --quiet --silent &>/dev/null
    done < "${script_dir}/npm-packages.txt"

    success 'installed: npm dependencies'
  else
    info '✗ error installing npm dependencies'
  fi
}

echo '› setup and configure nvm/node/global packages'

# configure nvm with zsh
install_nvm

# install node via npm
install_node

# download and configure yarn
install_yarn

# # run install npm dependencies (global)
install_npm_dependencies
