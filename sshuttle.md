La herramienta sshuttle sirve para crear una especie de VPN a través de SSH. Permite acceder a redes remotas sin configurar una VPN tradicional.

sudo sshuttle -r usuario@ip red/24 -v
Desglose del comando:

sudo: ejecuta el comando con privilegios de administrador.
sshuttle: inicia el túnel de red.
-r riley@10.10.110.35: se conecta por SSH al servidor 10.10.110.35 usando el usuario riley.
192.168.110.0/24: indica que todo el tráfico destinado a esa red será enviado a través del túnel.
-v: modo detallado (verbose), muestra más información de lo que está haciendo.
