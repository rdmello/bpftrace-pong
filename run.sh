#!/bin/sh

set -eu

# Set things up so that any ctrl+c returns to the original setting.
finish() { stty echo; }
trap finish EXIT

# Default dimensions to 40x12 if not provided by user.
WIDTH=${1:-40}
HEIGHT=${2:-12}
DIFFICULTY=${3:-70} # Difficulty is between 1-100, default to 70.

# Disable echo so that input chars are not echoed in the terminal
stty -echo
bpftrace pong.bt $WIDTH $HEIGHT $DIFFICULTY
