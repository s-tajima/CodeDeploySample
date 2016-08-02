#!/bin/bash

echo "[CodeDeploy] restart nginx."
service nginx restart
echo "[CodeDeploy] restarted nginx."

/srv/app

