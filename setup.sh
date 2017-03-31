#!/bin/bash

set -e

source ${BASH_SOURCE%/*}/utils/index.sh

logBanner

log "creating default directories"
source ${BASH_SOURCE%/*}/scripts/makes.sh
log "makes"

log "cleaning existing files"
source ${BASH_SOURCE%/*}/scripts/clean.sh
log "cleans"

log "creating symlinks"
source ${BASH_SOURCE%/*}/scripts/symlinks.sh
log "synlinks"

log "reloading zsh"
source "$HOME/.zshrc"
log "zsh"
