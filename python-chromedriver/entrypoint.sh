#!/usr/bin/env bash
[[ "${USERID:-""}" =~ ^[0-9]+$ ]] && usermod -u $USERID -o chrome
[[ "${GROUPID:-""}" =~ ^[0-9]+$ ]] && groupmod -g $GROUPID -o chrome

gosu chrome "$@"
