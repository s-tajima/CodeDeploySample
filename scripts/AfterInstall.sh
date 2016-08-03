#!/bin/bash

date >  /tmp/AfterInstall.log
pwd  >> /tmp/AfterInstall.log

itamae local /srv/itamae/*.rb        >> /tmp/AfterInstall.log 2>&1
echo "[CodeDeploy] itamae applied."  >> /tmp/AfterInstall.log 2>&1

service nginx restart                >> /tmp/AfterInstall.log 2>&1
echo "[CodeDeploy] restarted nginx." >> /tmp/AfterInstall.log 2>&1

killapp app || true                  
nohup /srv/app/app &                 >> /tmp/AfterInstall.log 2>&1
