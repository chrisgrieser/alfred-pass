#!/usr/bin/env zsh
# shellcheck disable=2154

entry="$*"
pass generate --in-place "$entry" > /dev/null
pass show "$entry" | head -n1

# shellcheck disable=2154
[[ "$auto_push" == "1" ]] && pass git push &> /dev/null
