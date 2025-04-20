BREW_HOME=/home/linuxbrew/.linuxbrew/bin
PATH=$BREW_HOME:$PATH

# JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
# CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar
# export JAVA_HOME CLASSPATH
#
# M2_HOME=/usr/local/apache-maven/apache-maven-3.9.5
# M2=$M2_HOME/bin
# PATH=$M2:$PATH
#
NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
PATH=$NVM_DIR:$PATH
#
# FLUTTER_PATH=$HOME/fvm/versions/3.27.3/bin
# PATH=$FLUTTER_PATH:$PATH

export PATH

export PATH=$HOME/development/flutter/bin:$PATH

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS="@im=ibus"
