#!/usr/bin/env bash
#
# You can regenerate the README with this script:
#
# ./run-me.bash 2>&1 | tee README.md

main() {
  local d dirs=( good bad )

  for d in "${dirs[@]}"; do
    cd "$d"
    mise trust &>/dev/null
    quiet mise i || exit
    cd ..
  done

  for d in "${dirs[@]}"; do
    echo "### $d"
    cd "$d"
    loud mise i -f ansible
    loud mise x -- type ansible
    echo
    cd ..
  done
}

quiet() {
  local output
  output=$("$@" 2>&1) || { echo "$output" >&2; return 1; }
}

loud() {
  echo
  [[ -t 1 ]] || echo '```'
  (set -x; "$@")
  [[ -t 1 ]] || echo '```'
}

main "$@"; exit
