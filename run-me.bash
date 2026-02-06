#!/usr/bin/env bash

main() {
  echo "### Installing using configuration in a"
  cd a
  mise trust
  mise i
  echo
  echo =========================================
  mise x -- which ansible
  echo =========================================

  echo
  echo "### Checking ansible in b"
  cd ../b
  mise trust
  echo
  echo =========================================
  mise x -- which ansible
  echo =========================================

  echo
  echo "### Force installing ansible in b"
  mise i -f ansible
  echo
  echo =========================================
  mise x -- which ansible
  echo =========================================

  echo
  echo "### Checking ansible in a"
  cd ../a
  echo
  echo =========================================
  mise x -- which ansible
  echo =========================================

  echo
  echo "### Force installing ansible in a"
  mise i -f ansible
  echo
  echo =========================================
  mise x -- which ansible
  echo =========================================
}

main "$@"; exit
