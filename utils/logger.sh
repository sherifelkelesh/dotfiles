#!/bin/bash

set -e

RESET="\e[0m"
BOLD="\e[1;34m"
RED="\e[0;31m"

function log() {
  printf "$1\n"
}

function logBold() {
  printf "${BOLD}$1${RESET}\n"
}

function logBanner() {
  log     ""
  logBold "       _       _    __ _ _             "
  logBold "      | |     | |  / _(_) |            "
  logBold "    __| | ___ | |_| |_ _| | ___  ___   "
  logBold "   / _  |/ _ \| __|  _| | |/ _ \/ __|  "
  logBold "  | (_| | (_) | |_| | | | |  __/\__ \  "
  logBold "   \__,_|\___/ \__|_| |_|_|\___||___/  "
  log     ""
  log     "      Made by @iagodahlem with ${RED}$HEART${RESET}"
  log     ""
  log     "  -----------------------------------"
  log     ""
}
