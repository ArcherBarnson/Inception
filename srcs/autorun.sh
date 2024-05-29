#!/bin/sh
#sudo -k # make sure to ask for password on next sudo ✱
if sudo true; then
	#build containers (duh)
	cd requirements/nginx && docker build -t nginx . && cd ../..
	cd requirements/mariadb && docker build -t mariadb . && cd ../..
	cd requirements/wordpress && docker build -t wp . && cd ../..
	#run containers (very useful comments)
	docker run -d -it nginx
	sleep 10
	docker run -d --env="./.env" -it mariadb
	sleep 10
	docker run -d --env="./.env" -it wp 
	sleep 10
else
        echo "You are not sudo. Go away."
        exit 1
fi
