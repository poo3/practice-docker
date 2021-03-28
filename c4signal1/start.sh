#!/bin/sh
hadle() {
  echo 'handle sigterm/sigint'
  exit 0
}
trap handle TERM INT

nginx -g "demon off;" &
wait
