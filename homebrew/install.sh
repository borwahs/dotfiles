#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if [ "$(uname)" = "Darwin" -o  "$(expr substr $(uname -s) 1 5)" = "Linux" ]
  then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  else
    echo "  Homebrew will not be installed on non-macOS or Linux systems"
  fi

fi

exit 0
