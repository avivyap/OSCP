#!/bin/bash

for ip in {1..255};do

  timeout 1 bash -c "ping -c 1 172.16.1.$ip" &>/dev/null && echo "[+] IP activa 172.16.1.$ip" &

done;wait
