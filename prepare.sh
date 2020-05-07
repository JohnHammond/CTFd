#!/bin/sh
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential python-dev python-pip libffi-dev
pip install -r requirements.txt
for d in CTFd/plugins/*; do \
    if [ -f "$d/requirements.txt" ]; then \
        pip install -r $d/requirements.txt --no-cache-dir; \
    fi; \
done;
