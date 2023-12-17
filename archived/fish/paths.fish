switch (uname)
    case Darwin
        fish_add_path /opt/homebrew/bin
    case Darwin
    case '*'
end

set -u JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
set -u CLASSPATH $JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.
set -u JAVA_PATH $JAVA_HOME/bin:$PATH:.
fish_add_path $JAVA_PATH

set -u M2_HOME /usr/local/apache-maven/apache-maven-3.6.2
set -u M2 $M2_HOME/bin
fish_add_path $M2:$PATH
