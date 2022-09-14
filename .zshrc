JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
PATH=$JAVA_HOME/bin:$PATH:.
CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.
export JAVA_HOME
export PATH
export CLASSPATH

export M2_HOME=/usr/local/apache-maven/apache-maven-3.6.2
export M2=$M2_HOME/bin
export PATH=$M2:$PATH


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ll="ls -al"

alias g="git"
alias gl="git log"
alias gb="git branch"
alias gs="git status"
alias ga="git add ."
alias gc="gitmoji -c"
alias gpo="git push origin"
alias gf="git fetch"
alias gco="git checkout"
alias gnb="git checkout -b"
alias gd="git branch -D"
