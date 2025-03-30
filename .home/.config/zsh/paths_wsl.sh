export BREW_HOME="/home/linuxbrew/.linuxbrew/bin"
PATH=$BREW_HOME:$PATH

NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
PATH=$NVM_DIR:$PATH


export JAVA_HOME=/usr/local/java-sdk/
PATH="$JAVA_HOME/bin:$PATH"

PATH="/home/linuxbrew/.linuxbrew/sbin:$PATH"

# Finalize PATH
export PATH
