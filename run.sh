#!/bin/sh

set -eu

# Set things up so that any ctrl+c returns to the original setting.
finish() { stty echo; }
trap finish EXIT

WIDTH=${1:-40}
HEIGHT=${2:-12}

# Disable echo so that input chars are not echoed in the terminal
stty -echo
bpftrace pong.bt $WIDTH $HEIGHT
