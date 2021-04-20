JAVA_HOME=$("/usr/libexec/java_home") 2>&/dev/null

if [ $JAVA_HOME ]; then
  export JAVA_HOME=$JAVA_HOME
fi

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

proxy() {
	export all_proxy=http://127.0.0.1:7890
}

unproxy() {
	unset all_proxy
}
