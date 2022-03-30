#!/bin/bash
git -C /home/gopoc/flask_docker_autoupdate pull
/home/gopoc/venv/bin/pip install -r /home/gopoc/flask_docker_autoupdate.git/server/requirements.txt