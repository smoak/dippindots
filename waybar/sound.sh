#!/bin/bash
VOL=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | tr -d 'Volume: ' | tr -d '0.')

if echo $VOL | grep -q MUTED; then
  PCT=$(echo $VOL | tr -d '[MUTED]')
  echo -e "{\"text\": \"\", \"alt\":\"muted\", \"class\":\"muted\", \"percentage\":\"$PCT\"}"
else
  echo -e "{\"text\": \"  $VOL%\", \"alt\":\"$VOL%\", \"percentage\":\"$VOL\"}"
fi
