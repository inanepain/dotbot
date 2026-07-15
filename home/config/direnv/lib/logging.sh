##############################################
#### direnv: logging
##############################################

function dmsg() {
    ${ENV_DIR_QUIET-false} || echo "$@"
    # if [[ ! ${ENV_DIR_QUIET-false} == true ]]; then
    # 	echo "$@"
    # fi
}

function delog() {
    ${ENV_DIR_DEBUG-false} && dmsg "$@"
    # if [[ ${ENV_DIR_DEBUG-false} == true ]]; then
    # 	dmsg "$@"
    # fi
}

function header() {
    delog "		*** $@ ***"
}

function log_debug() {
    delog "DEBUG: $@"
}
