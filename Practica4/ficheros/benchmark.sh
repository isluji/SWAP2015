#!/bin/bash

for (( i = 0; i < 10; i++ ))
do
	ab -n 100 -c 5 http://192.168.56.101/script.php &>> server_ab

	siege -b -t60S -v http://192.168.56.101/script.php &>> server_siege

	ab -n 100 -c 5 http://192.168.56.103/script.php &>> nginx_ab

	siege -b -t60S -v http://192.168.56.103/script.php &>> nginx_siege

	ab -n 100 -c 5 http://192.168.56.104/script.php &>> haproxy_ab

	siege -b -t60S -v http://192.168.56.104/script.php &>> haproxy_siege
done
