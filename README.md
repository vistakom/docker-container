# Hola 👋 🦧

This is collection of docker container script that will help out team to create some target server that will be manage by PAM.

 
### 0️⃣1️⃣-docker_vlan_network.sh
The puspose of this script is to create vlan network inside docker that can use by container to connect with other container. With this vlan, docker container can running with dedicated ip address instead bind host ip address

### 0️⃣2️⃣-container_mysql.sh
This script will create database mysql container with specific container name, ip address and root password. so you must define variable below base on your env.
```bash
containerName="mysql.mylab.local"  ## Change this
containerIP="192.168.43.21"        ## Change this
containerNetwork="mylab_net"       ## Change this base on vlan network script
rootPass="s3crEt"                  ## Change this
```
After execute the script, you can access database with mysql client (mysql workbench, heidisql, etc) and create new user for testing.

### 0️⃣3️⃣-container_mssql.sh
This script will create database ms sql server container with specific container name, ip address and sa password. so you must define variable below base on your env. Container will be accessible with port 1433.
After execute script, we can access database from client.

This example how to access database from win 11:
- install sqlcmd package with powershell command: `winget install sqlcmd`
- access database with command line: `sqlcmd -S <ip_address>,1433 -U SA -P "<saPassword>"`

### 0️⃣4️⃣-
### 0️⃣5️⃣-
### 0️⃣6️⃣-
### 0️⃣7️⃣-
### 0️⃣8️⃣-
### 0️⃣9️⃣-
### 1️⃣0️⃣-
### 1️⃣1️⃣-
### 1️⃣2️⃣-
### 1️⃣3️⃣-
### 1️⃣4️⃣
