# Caso práctico 2
Automatización de despliegues en entornos Cloud

En este repositorio puedes encontrar el código terraform para desplegar una infraestructura de 4 servidores en Azure.
También el código de Ansible para desplegar Kubernetes de forma automatizada en ellos con la  configuración necesaria.

Descripción de la actividad:

Desplegado un clúster de Kubernetes en Azure. El clúster consta de los siguientes elementos:

-	Un master node.
-	Dos workers.

Además se ha desplegado un nodo NFS para almacenamiento.

Role	Sistema Operativo	vCPUs	Memoria
NFS	          CentOS 8	1 CPU	3.5 GB
Máster	      CentOS 8	1 CPU	3.5 GB
Worker01	    CentOS 8	1 CPU	3.5 GB
Worker02	    CentOS 8	1 CPU	3.5 GB

Nombre	       IP	
Master	  10.0.1.10	masternod.westeurope.cloudapp.azure.com
NFS	      10.0.1.13	nfsnode.westeurope.cloudapp.azure.com
Worker01	10.0.1.11	nodeworker01.westeurope.cloudapp.azure.com
Worker02	10.0.1.12	nodeworker02.westeurope.cloudapp.azure.com

Por último se ha desplegado una aplicación game 2048. Como imagen se ha utilizado la ya publicada en docker.io/alexwhen/docker-2048:latest sin modificar.
