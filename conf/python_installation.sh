#!/bin/bash

apt-get  update
apt-get --assume-yes install python3-pip python3-venv openjdk-8-jdk scala wget

python3 -m venv /opt/venv
chown -R ubuntu:ubuntu /opt/venv
