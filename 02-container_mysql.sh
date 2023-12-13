#!/bin/bash
# Global Variables
containerName="mysql.mylab.local"  ## Change this
containerIP="192.168.43.21"        ## Change this
containerNetwork="mylab_net"       ## Change this base on vlan network script
rootPass="s3crEt"                  ## Change this

# Create Docker Container
echo "Creating $containerName Container"
echo "------------------------------------"
set -x
docker run \
    --name $containerName \
    --ip $containerIP \
    --network $containerNetwork \
    -e MYSQL_ROOT_PASSWORD=$rootPass \
    --mount source=$containerName,target=/var/lib/mysql \
    --restart unless-stopped \
    -d mysql:8.2.0
set +x
