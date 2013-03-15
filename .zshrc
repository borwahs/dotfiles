PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# used for https://github.com/alvinlz/arie-terminal-theme
export CLICOLOR=1
export LSCOLORS=Gxfxdxdxdxdxdxcxcxxfxf

# add colors
autoload -U colors
colors

# prompt
PROMPT='%B%n@%m%b:%~ # '

# show completion on first TAB
setopt menucomplete

# load completions for Ruby, Git, etc.
autoload compinit
compinit

# store command history
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt SHARE_HISTORY

# ignore command ran back to back (save last one)
setopt HIST_IGNORE_DUPS

# only store a command once and update on last use
#setopt HIST_IGNORE_ALL_DUPS
