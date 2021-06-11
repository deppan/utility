JAVA_HOME=$("/usr/libexec/java_home") 2>&/dev/null
if [ $JAVA_HOME ]; then
  export JAVA_HOME=$JAVA_HOME
fi

proxy() {
	export http_proxy=http://127.0.0.1:7890
	export https_proxy=http://127.0.0.1:7890
}

unproxy() {
	unset http_proxy
	unset https_proxy
}
