#!/bin/sh

curl -v -F op=write_mem -F type=flash -F offset=0 -F datafile=@software/firmware/firmware.bin http://192.168.8.8/cgi-bin/cgi
while true; do
  percent=$(curl -s -F op=progress http://192.168.8.8/cgi-bin/cgi -o -)
  echo $percent
  if [[ $percent = "100%" ]]; then
    break
  fi
done
curl -v -F op=upload_bitstream -F bitstream=@thinpad_top.runs/impl_1/thinpad_top.bit http://192.168.8.8/cgi-bin/cgi
