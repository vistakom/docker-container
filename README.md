# Hola 👋

This is collection of docker container script that will help out team to create some target server that will be manage by PAM.
 2️⃣ 3️⃣ 4️⃣ 5️⃣ 6️⃣ 7️⃣ 8️⃣ 9️⃣ 🔟 🔢 
### 0️⃣1️⃣-docker_vlan_network.sh
The puspose of this script is to create vlan network inside docker that can use by container to connect with other container. With this vlan, docker container can running with dedicated ip address instead bind host ip address

### 0️⃣2️⃣-container_mysql.sh
Tis script will create database mysql container with specific container name, ip address and root password. so you must define variable below base on your env.
```bash
containerName="mysql.mylab.local"  ## Change this
containerIP="192.168.43.21"        ## Change this
containerNetwork="mylab_net"       ## Change this base on vlan network script
rootPass="s3crEt"                  ## Change this
```
After execute the script, you can access database with mysql client (mysql workbench, heidisql, etc) and create new user for testing.
