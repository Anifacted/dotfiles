alias wip="git add . && git commit -nam 'WIP'"
alias cleanbranches="git branch --merged | egrep -v \"(^\*|master|main|dev)\" | xargs git branch -d"

# Create git branch utility
branch () {
  if [ -z "$1" ]; then
    echo "\033[0;31mPlease specificy branch name"
  else
    git co -b "mhoegh/$1"
  fi
}
