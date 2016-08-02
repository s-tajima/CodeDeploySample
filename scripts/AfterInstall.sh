#!/bin/bash

echo "[CodeDeploy] restart nginx."
service nginx restart
echo "[CodeDeploy] restarted nginx."

killapp app || true
nohup /srv/app &
