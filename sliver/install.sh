#!/bin/bash
apt-get -y update; apt-get -y install curl autossh

curl https://sliver.sh/install|bash

apt-get autoclean -y
apt-get clean -y

echo -n "IyEvYmluL2Jhc2gKbm9odXAgL3Jvb3Qvc2xpdmVyLXNlcnZlciBkYWVtb24gJgp0b3AK" | base64 -d > /run.sh
echo -n "IyEvYmluL2Jhc2ggCmN1cmwgLXYgaHR0cDovL2xvY2FsaG9zdDozMTMzNyAyPiYxIHxncmVwIENvbm5lY3RlZCB8fCBleGl0IDEK" |base64 -d > /healthcheck.sh

chmod 700 /run.sh /healthcheck.sh
