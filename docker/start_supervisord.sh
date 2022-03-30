#!/bin/bash
echo "starting supervisord"
echo $ENV_SUPERVISORD_USER
/bin/bash clone.sh
./venv/bin/supervisord -n -c supervisord.conf