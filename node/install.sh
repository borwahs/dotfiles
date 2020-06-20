source "$(dirname $0)/../utils/functions.sh"

install_npm_dependencies () {
  if command_exists "npm";
  then
    info '› installing npm dependencies'

    # TODO: future hide output and only show if error
    while IFS= read -r line
    do
      npm install $line --global --silent
    done < "$(dirname $0)/npm-packages.txt"

    success '› installed npm dependencies'
  else
    fail '✗ error installing npm dependencies'
  fi
}

# run install npm dependencies (global)
install_npm_dependencies
