export BASH_SILENCE_DEPRECATION_WARNING=1
export MANPATH=$MANPATH:/opt/local/man
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="$PATH":"/Applications/Visual Studio Code.app//Contents/Resources/app/bin"

export GOPATH=~/v/go
export PATH=$GOPATH/bin:export:/opt/homebrew/opt/go@1.18/bin:$PATH
export PATH=$PATH:$GOROOT/bin

SCRIPTS=~/v/mydots

export PATH="/opt/homebrew/opt/libpq/bin:$PATH:$HOME/.cargo/bin"

source $SCRIPTS/aliases.sh
source $SCRIPTS/ciphers.sh

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# python
# source ~/_py39/bin/activate

export PATH="$DENO_INSTALL/bin:$PATH"
