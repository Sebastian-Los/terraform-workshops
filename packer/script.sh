#!/bin/bash

apt -y update
apt -y upgrade

#stackdriver logging agent file
curl -sSO https://dl.google.com/cloudagents/install-logging-agent.sh
bash install-logging-agent.sh

mkdir /home/ubuntu/data
mv /tmp/file.jpg /home/ubuntu/data/file.jpg
chown -R ubuntu:ubuntu /home/ubuntu/data