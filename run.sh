#!/bin/sh

set -eu

# Set things up so that any ctrl+c returns to the original setting.
finish() { stty echo; }
trap finish EXIT

# Default dimensions to 41x12 if not provided by user.
WIDTH=${1:-41}
HEIGHT=${2:-12}
DIFFICULTY=${3:-74} # Difficulty is between 1-100, default to 74.

# Disable echo so that input chars are not echoed in the terminal
stty -echo
bpftrace pong.bt $WIDTH $HEIGHT $DIFFICULTY
