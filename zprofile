export JAVA_HOME=$("/usr/libexec/java_home")
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

function proxy() {
	export all_proxy=http://127.0.0.1:7890
}

function unproxy() {
	unset all_proxy
}
