#!/usr/bin/env bash

# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

source "$(dirname $0)/../utils/functions.sh"

run_software_update () {
  local yes= no=
  local action=

  user "Run software update?\n\
  [Y/y]es, [N/n]o?"
  read -n 1 action <&1

  case "$action" in
    N )
      no=true;;
    n )
      no=true;;
    Y )
      yes=true;;
    y )
      yes=true;;
    * )
      ;;
  esac

  echo ""

  if [ "$yes" == "true" ]
  then
    echo "› sudo softwareupdate -i -a"
    sudo softwareupdate -i -a
  fi

  if [ "$no" == "true" ]
  then
    echo "› skipping! softwareupdate"
  fi
}

run_software_update
