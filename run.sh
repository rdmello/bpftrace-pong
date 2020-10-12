#!/bin/sh

set -eu

# Set things up so that any ctrl+c returns to the original setting.
finish() { stty echo; }
trap finish EXIT

# Disable echo so that input chars are not echoed in the terminal
stty -echo
bpftrace pong.bt
