#!/bin/bash
if [ $# -ge 1 ]
then
        PASSWORD=$1
else
        PASSWORD=Passw0rd_
fi

apt-get -y update; apt-get -y install curl wget autossh libicu-dev

wget -q https://github.com/rasta-mouse/SharpC2/releases/download/v1.3.0/teamserver-linux.tar.gz -O /opt/teamserver-linux.tar.gz
tar xvfzp /opt/teamserver-linux.tar.gz -C /opt/

apt-get autoclean -y;apt-get clean -y

echo -n "IyEvYmluL2Jhc2gKSVA9JChob3N0bmFtZSAtSSkKbm9odXAgL29wdC9TaGFycEMyL1RlYW1TZXJ2ZXIgJElQIFBMQUNFSE9MREVSICYKdG9wCg==" | base64 -d > /run.sh
echo -n "IyEvYmluL2Jhc2ggCmN1cmwgLXYgaHR0cDovL2xvY2FsaG9zdDo1MDA1MCAyPiYxIHxncmVwIENvbm5lY3RlZCB8fCBleGl0IDEK" |base64 -d > /healthcheck.sh

sed -i "s/PLACEHOLDER/$PASSWORD/" /run.sh
chmod 700 /run.sh /healthcheck.sh /opt/SharpC2/TeamServer
