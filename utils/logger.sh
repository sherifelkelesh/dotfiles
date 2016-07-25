#!/bin/sh

# Loggers
# ----------------------------------

function msg() {
	echo "\033[0;37m$1\033[0m";
}

function msg_bold() {
	echo "\033[1;34m$1\033[0m";
}

function msg_ok() {
	echo "$ARROW\033[1;32m  $1 $CHECK\033[0m";
}

function msg_run() {
	echo "$ARROW\033[1;35m  $1 $ $2\033[0m";
}

function msg_done() {
	echo "$ARROW\033[1;37m  $1 \033[0m";
}

function hello() {
	msg      "                                       "
	msg_bold "       _       _    __ _ _             "
	msg_bold "      | |     | |  / _(_) |            "
	msg_bold "    __| | ___ | |_| |_ _| | ___  ___   "
	msg_bold "   / _  |/ _ \| __|  _| | |/ _ \/ __|  "
	msg_bold "  | (_| | (_) | |_| | | | |  __/\__ \  "
	msg_bold "   \__,_|\___/ \__|_| |_|_|\___||___/  "
	msg      "                                       "
	msg "  \e[3mMade by @iagodahlem with \033[1;31m$HEART\033[0m "
	msg ""
	msg " ------------------------------- "
	msg ""
}
