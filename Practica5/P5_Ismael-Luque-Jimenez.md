# PRÁCTICA 5 SWAP
## ISMAEL LUQUE JIMÉNEZ

### **Crear un tar con ficheros locales**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/tar1.png)

### **Copiar ficheros en un equipo remoto**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/tar2.png)

### **Crear una base de datos**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/db1.png)

### **Insertar datos en la BD**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/db2.png)

### **Consultar datos de la BD**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/db3.png)


## [Replicación de BD MySQL con mysqldump]

### **Evitar acceso a la BD**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/dump1.png)

### **Replicar BD con mysqldump**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/dump2.png)

### **Restaurar datos de la BD**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/dump3.png)


## [Replicación de BD mediante configuración maestro-esclavo]

### **Configuración MySQL de maestro (server-id = 1) y esclavo (server-id = 2)**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/ms1.png)

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/ms2.png)

### **Crear usuario esclavo en el maestro y darle permisos de replicación**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/ms3.png)

### **Dar al esclavo los datos del maestro**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/ms4.png)

### **Esclavo => SHOW SLAVE STATUS\G => Seconds_Behind_Master != null => Todo funciona perfectamente**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/ms5.png)

### **Introducir nuevos datos en la base de datos del maestro**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/ms6.png)

### **Comprobar que la modificación se ha reflejado en el esclavo**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/ms7.png)


## [Configuración maestro-maestro con balanceador HAProxy]

### **Crear usuario esclavo en el maestro B y darle permisos de replicación**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/mm1.png)

### **Dar al maestro A los datos del maestro B**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/mm2.png)

### **Maestro B => SHOW SLAVE STATUS\G => Seconds_Behind_Master != null => Todo funciona perfectamente**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/mm3.png)

### **Preparar ambos servidores MySQL creando dos usuarios para HAProxy (check => comprobar estado de un servidor) (root => acceder al cluster)**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/mm4.png)

### **Instalar cliente MySQL y comprobar su funcionamiento**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/mm5.png)

### **Configuración de HAProxy para balanceo de carga en un cluster MySQL**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/mm6.png)

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/mm7.png)

### **Reiniciar HAProxy con la nueva configuración**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/mm8.png)

### **Comprobar funcionamiento del balanceo de carga entre servidores MySQL**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/mm9.png)