#!/bin/bash

# TODO: Sanity checks

CWD=$(pwd)
time docker-compose up -d

echo "Giving time for containers to start; sleeping..." && sleep 20

cd ansible && time ansible-playbook -i inventory setup.yml

cd $CWD
