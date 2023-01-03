#!/bin/bash 

pid=`pgrep wf-recorder`
status=$?

if [ $status != 0 ] 
then 
  notify-send -t 2000 "Recording Started"
	wf-recorder -g "$(slurp)" -f $(xdg-user-dir VIDEOS)/screenrecords/$(date +'recording_%Y-%m-%d-%H%M%S.mp4')
else
	pkill --signal SIGINT wf-recorder
	notify-send -t 2000 "Recording Stopped"
fi