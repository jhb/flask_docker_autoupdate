#!/bin/bash
echo 'updating'
while :
do
  date
  git -C /home/gopoc/repo pull
  /home/gopoc/venv/bin/pip install -r /home/gopoc/repo/server/requirements.txt
  sleep 60
done

# ./venv/bin/pip list | grep -i yaml
# ./venv/bin/pip uninstall -y pyyaml