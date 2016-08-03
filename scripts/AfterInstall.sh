#!/bin/bash

itamae local /srv/itamae/*.rb
echo "[CodeDeploy] itamae applied."

service nginx restart
echo "[CodeDeploy] restarted nginx."

killapp app || true
nohup /srv/app/app &
