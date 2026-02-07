#!/usr/bin/env bash

main() {
  local d dirs=( good bad )

  for d in "${dirs[@]}"; do
    echo "### Initializating $d"
    cd "$d"
    mise trust &>/dev/null
    quiet mise i
    cd ..
  done

  for d in "${dirs[@]}"; do
    echo
    echo "### Trying $d"
    cd "$d"
    loud mise i -f ansible
    loud mise x -- type ansible
    cd ..
  done
}

quiet() {
  local output
  output=$("$@" 2>&1) || { echo "$output" >&2; exit 1; }
}

loud() {
  echo
  (set -x; "$@")
}

main "$@"; exit
