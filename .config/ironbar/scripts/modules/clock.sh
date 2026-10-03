#!/usr/bin/env bash

watch_format() {
  local format="$1"
  local now wait_seconds

  while true; do
    date +"$format"

    now=$(date +%s)
    wait_seconds=$((60 - now % 60))
    sleep "$wait_seconds"
  done
}

watch_time() {
  watch_format '%H:%M:%S'
}

case "${1:-time}" in
time) date +'%H:%M' ;;
hour) date +'%H' ;;
minute) date +'%M' ;;
second) date +'%S' ;;
watch) watch_time ;;
watch-hour) watch_format '%H' ;;
watch-minute) watch_format '%M' ;;
watch-second) watch_format '%S' ;;
date) date +'%Y-%m-%d %A' ;;
*)
  printf 'Usage: %s {time|hour|minute|second|watch|watch-hour|watch-minute|watch-second|date}\n' "$0" >&2
  exit 2
  ;;
esac
