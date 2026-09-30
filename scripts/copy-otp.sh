#!/usr/bin/env zsh

# not using `echo -n` due to #2
entry="$*"
pass otp "$entry" 2>&1 | head -n1
