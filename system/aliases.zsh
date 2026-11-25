# Colorized ls via coreutils (`brew install coreutils`)
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias wttr="curl wttr.in/Copenhagen"
alias onport='function onport(){  lsof -i ":$1"; };onport'
