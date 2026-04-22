#########################################
#		    oh-my-zsh - custom: 010: java
# version: 1                 2025 Sep 19
#############################-###########

## OPT_*
# custom bunch of variables for my own use for this or that...
#####################################################################
if [[ -f /usr/libexec/java_home ]]; then
	export JAVA_HOME=$(/usr/libexec/java_home)
	export PATH=$JAVA_HOME/bin:$PATH
	export MAVEN_HOME=$HOME/bin/apache-maven-3.9.11
	export PATH=$MAVEN_HOME/bin:$PATH
fi
