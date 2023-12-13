#!/bin/bash
# Global Variables
containerName="mssql.mylab.local"  ## Change this
containerIP="192.168.43.22"        ## Change this
containerNetwork="mylab_net"       ## Change this base on vlan network script
saPass="s3crEt123"                    ## Change this

# Create Docker Container
echo "Creating $containerName Container"
echo "------------------------------------"
set -x
docker run \
    --name $containerName \
    --ip $containerIP \
    --network $containerNetwork \
    -e 'ACCEPT_EULA=Y' \
    -e SA_PASSWORD=$saPass \
    --restart unless-stopped \
    -d mcr.microsoft.com/mssql/server
set +x
