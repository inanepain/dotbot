function setDebug() {
    mode=${1-false}
    if [[ $mode == true ]]; then
        touch ~/.debug
    else
        rm -f ~/.debug
	fi
}