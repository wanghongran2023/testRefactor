#!/bin/bash
sudo docker rmi -f $(sudo docker images -aq)
sudo rm -rf /var/lib/docker
sudo systemctl restart docker

