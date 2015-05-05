# PRÁCTICA 4 SWAP
## ISMAEL LUQUE JIMÉNEZ

### **script.php (Script utilizado para agravar las peticiones a los servidores)**

	<?php
		$tiempo_inicio = microtime(true);

		for ($i=0; $i<3000000; $i++){
			$a = $i * $i;
			$b = $a - $i;
			$c = $a / $b;
			$d = 1 / $c;
		}

		$tiempo_fin = microtime(true);

		echo "Tiempo empleado: " . round($tiempo_fin - $tiempo_inicio, 4);
	?>

### **benchmark.sh (Script utilizado para ejecutar todos los benchmark)**
	
	for (( i = 0; i < 10; i++ ))
	do
		ab -n 100 -c 5 http://192.168.56.101/script.php &>> server_ab

		siege -b -t60S -v http://192.168.56.101/script.php &>> server_siege

		ab -n 100 -c 5 http://192.168.56.103/script.php &>> nginx_ab

		siege -b -t60S -v http://192.168.56.103/script.php &>> nginx_siege

		ab -n 100 -c 5 http://192.168.56.104/script.php &>> haproxy_ab

		siege -b -t60S -v http://192.168.56.104/script.php &>> haproxy_siege
	done

### **Tabla de resultados y gráfica asociada para ApacheBench**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica4/capturas/ab.PNG)

### **Tabla de resultados y gráfica asociada para Siege**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica4/capturas/siege.PNG)
