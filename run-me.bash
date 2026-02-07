#!/usr/bin/env bash

main() {
  echo "### Initializing"
  cd a
  mise trust &>/dev/null
  quiet mise i
  cd ../b
  mise trust &>/dev/null
  quiet mise i

  echo
  echo "### Installing using configuration in a."
  echo "### The ansible command becomes available."
  cd ../a
  loud mise i -f ansible
  loud mise x -- type ansible

  echo
  echo "### Installing using configuration in b."
  echo "### The ansible command isn't available."
  cd ../b
  loud mise i -f ansible
  loud mise x -- type ansible
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
