# general
NEXUS_PATH=~/.nexus
export NEXUS_PATH

alias ll="ls -alh"

# shortcuts to directories
alias dot="cd $NEXUS_PATH/dot"
alias win="cd /mnt/c/Users/cjr_1"
alias www="cd $NEXUS_PATH/chanjunren.github.io/www"
alias v="cd $NEXUS_PATH/vaultusaurus"
alias vr="npm run vault_run"

alias cl="clear"

# git
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
alias gsd="git stash drop"
alias grh="git reset --hard"
alias gprune="git remote prune origin"
alias ggc="git gc --prune=now"

# maven
alias mci="mvn clean install -DskipTests"
alias mcc="mvn clean compile -DskipTests"
alias mcp="mvn clean package -DskipTests"
alias mep="mvn help:effective-pom"
alias mdt="mvn dependency:tree"
alias miseg="mvn install:install-file -Dfile=user-segmentation-sdk-1.0.9.3-RELEASE.jar -DgroupId=com.okcoin.segmentation -DartifactId=user-segmentation-sdk -Dversion=1.0.9.3-RELEASE -Dpackaging=jar"
alias ud="cd target; mkdir test; cp user-segmentation-flink-job-1.0.0-SNAPSHOT-dependencies.jar test; cd test; unzip user-segmentation-flink-job-1.0.0-SNAPSHOT-dependencies.jar; cd ../../"

# lazygit
alias lg="lazygit"

# npm
alias vault_pub="npm run pack; npm publish --access public"
