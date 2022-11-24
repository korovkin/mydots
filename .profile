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

function topbeaver_ssh() {
  autossh -M 9999 \
    -i ~/.ssh/id_rsa \
    -o ServerAliveInterval=10 \
    -o ServerAliveCountMax=3 \
    korovkin@topbeaver.com
}

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

function tunnel_rpiz() {
  autossh -M 9988 \
    -o ServerAliveInterval=10 \
    -o ServerAliveCountMax=3 \
    -p 2266 \
    -J topbeaver.com \
    pi@localhost
}

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# python
# source ~/_py39/bin/activate


export DENO_INSTALL="/Users/korovkin/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

