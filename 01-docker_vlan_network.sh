# the puspose of this script is to create vlan network inside docker that can use by container to connect with other container. With this vlan, docker container can running with dedicated ip address instead bind host ip address
set -x
docker network create -d ipvlan \
    --subnet=192.168.43.0/24 \
    --gateway=192.168.43.2 \
    -o ipvlan_mode=l2 \
    -o parent=eth0 mylab_net
set +x
