#!/usr/bin/env bash

player="splayer_next"
MAX_LEN=30

has_player() {
  playerctl -l 2>/dev/null | grep -q .
}

truncate_str() {
  local str="$1"
  local max_len="$2"
  if [ -z "$max_len" ]; then
    max_len="$MAX_LEN"
  fi
  if [ ${#str} -gt "$max_len" ]; then
    echo "${str:0:$((max_len - 3))}..."
  else
    echo "$str"
  fi
}

metadata() {
  if has_player; then
    track=$(playerctl metadata --format "{{ title }} - {{ artist }}" --player="$player" 2>/dev/null)
    if [ -z "$track" ]; then
      echo "No track"
    else
      truncate_str "$track"
    fi
  else
    echo "No player"
  fi
}

watch() {
  while true; do
    if has_player; then
      status=$(playerctl status 2>/dev/null)
      if [[ "$status" == "Playing" ]]; then
        track=$(playerctl metadata --format "▶ {{ title }} - {{ artist }}" --player="$player" 2>/dev/null)
        truncate_str "$track"
      elif [[ "$status" == "Paused" ]]; then
        track=$(playerctl metadata --format " {{ title }} - {{ artist }}" --player="$player" 2>/dev/null)
        truncate_str "$track"
      else
        truncate_str "⏹ Stopped"
      fi
    else
      echo ""
    fi
    sleep 1
  done
}

case "${1:-}" in
watch) watch ;;
metadata) metadata ;;
previous) has_player && playerctl previous ;;
next) has_player && playerctl next ;;
toggle) has_player && playerctl play-pause ;;
*)
  echo "Usage: $0 {watch|metadata|previous|next|toggle}" >&2
  exit 1
  ;;
esac
