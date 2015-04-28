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

### **Configuración mysql de maestro (server-id = 1) y esclavo (server-id = 2)**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/master1.png)

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/master2.png)

### **Crear usuario esclavo en el maestro y darle permisos de replicación**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/master3.png)

### **Dar al esclavo los datos del maestro**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/master4.png)

### **(Seconds_Behind_Master != null) => Todo funciona perfectamente**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/master5.png)

### **Introducir nuevos datos en la base de datos del maestro**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/master6.png)

### **Comprobar que la modificación se ha reflejado en el esclavo**

![img](https://github.com/isma94/SWAP2015/blob/master/Practica5/capturas/master7.png)
