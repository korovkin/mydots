export BASH_SILENCE_DEPRECATION_WARNING=1
export MANPATH=$MANPATH:/opt/local/man
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="$PATH":"/Applications/Visual Studio Code.app//Contents/Resources/app/bin"

export GOPATH=~/v/go
export PATH=$GOPATH/bin:$PATH
export PATH=$PATH:$GOROOT/bin
# export AWS_USER=none

SCRIPTS=~/v/mydots

export PATH="/opt/homebrew/opt/libpq/bin:$PATH:$HOME/.cargo/bin"

source $SCRIPTS/aliases.sh
source $SCRIPTS/ciphers.sh

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

function tunnel_borka() {
  autossh -M 9999 \
    -L 6090:localhost:9090 \
    -L 6100:localhost:9100 \
    -o ServerAliveInterval=10 \
    -o ServerAliveCountMax=3 \
    ubuntu@borka.krzcool.com
}

function tunnel_rpi() {
  autossh -M 9999 \
    -L 5090:localhost:9090 \
    -L 5100:localhost:9100 \
    -L 8080:192.168.86.209:80 \
    -o ServerAliveInterval=10 \
    -o ServerAliveCountMax=3 \
    pi@h.krzcool.com
}

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

