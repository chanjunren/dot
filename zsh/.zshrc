# Homebrew Configuration
BREW_HOME=/opt/homebrew/bin
PATH=$BREW_HOME:$PATH

# Java Configuration
JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar
export JAVA_HOME CLASSPATH

# Maven Configuration
M2_HOME=/usr/local/apache-maven/apache-maven-3.9.5
M2=$M2_HOME/bin
PATH=$M2:$PATH

NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
PATH=$NVM_DIR:$PATH

# Finalize PATH
export PATH

source ~/dot_files/brew_setup.sh

alias ll="ls -al"

alias g="git"
alias gl="git log"
alias gb="git branch"
alias gs="git status"
alias ga="git add ."
alias gc="gitmoji -c"
alias gf="git fetch"
alias gco="git checkout"
alias gnb="git checkout -b"
alias gd="git branch -D"
alias gps="git push origin"
alias gpl="git pull origin"
alias gm="git merge"
alias gsl="git stash list"
alias gsp="git stash pop"
alias gss="git stash save"
alias gsd="git stash delete"
alias grh="git reset --hard"