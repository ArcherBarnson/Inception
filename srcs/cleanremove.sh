#!/bin/sh

sudo docker system prune -af
-sudo docker volume ls $(sudo docker volume ls -q) 2>/dev/null
