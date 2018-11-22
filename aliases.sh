# known as a shortcut, allows to place a simple command in front of a longer or less memorable command.
alias gst='git status $*'
alias gdf='git diff $*'
alias gdfc='git diff --cached $*'
alias gl='git log $*'
alias gs='git status $*'
alias gc='git checkout $*'
alias ga='git add $*'
alias gm='git commit -m $*'
alias gma='git commit --amend $*'

# Display detailed information on one or more networks
alias dn='docker network inspect cms-application -f ""{{range $id, $value := .Containers}} {{(index $value).Name}} {{end}}""'

# Display versions list available in the docker hub
# {dependencies} - jq [ https://stedolan.github.io/jq/ ]
alias showDockerTags='function getTags() { curl "https://registry.hub.docker.com/v2/repositories/library/$1/tags/" | jq "".\"results\"[][\"name\"]""; }; getTags'

# Maven command to run a Spring Boot application.
alias run-spring='mvn spring-boot:run'

# Maven command to clean/install and then run a Spring Boot application.
alias install-run='mvn clean install spring-boot:run'

# Just test, how to invoke a function in
alias testPassArgs='function tags() { echo "first arg: $1"; };tags'
