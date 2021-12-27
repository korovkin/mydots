export BASH_SILENCE_DEPRECATION_WARNING=1
export MANPATH=$MANPATH:/opt/local/man
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="$PATH":"/Applications/Visual Studio Code.app//Contents/Resources/app/bin"

export GOPATH=~/v/go
export PATH=$GOPATH/bin:$PATH
export PATH=$PATH:$GOROOT/bin

SCRIPTS=~/v/mydots

source $SCRIPTS/aliases.sh
source $SCRIPTS/ciphers.sh

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
