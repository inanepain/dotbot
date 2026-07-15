##############################################
#### direnv: utilities for files
##############################################
# count DS_Store files
function clean-files-count() {
    fd --hidden --no-ignore ".DS_Store" | wc -l | awk '{print $1}'
}

# Ask/Auto clean found DS_Store files
function clean-files-osx() {
    if [[ ! $(clean-files-count) == "0" ]]; then
		local dirtyFiles="$(clean-files-count)"
        if [[ ${ENV_DIR_AUTO_CLEAN:-false} == true ]]; then
            delog "Found $dirtyFiles DS_Store files: AUTO CLEANING"
            find "${@:-.}" -type f -name .DS_Store -delete
        else
            if fask "Found $dirtyFiles DS_Store files. Remove?" Y; then
                delog "removing: .DS_Store"
                find "${@:-.}" -type f -name .DS_Store -delete
            fi
        fi
    fi
}
