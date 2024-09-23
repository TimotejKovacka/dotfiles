# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
# Check if gls (GNU ls) is available
if command -v gls &> /dev/null
then
  # gls is available, use it
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
else
  # gls is not available, use the default ls
  alias ls="ls -F --color"
  alias l="ls -lAh --color"
  alias ll="ls -l --color"
  alias la='ls -A --color'
fi