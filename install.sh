#!/bin/bash
apt-get -y update; apt-get -y install curl autossh
curl https://sliver.sh/install|bash

echo -n "IyEvYmluL2Jhc2gKbm9odXAgL3Jvb3Qvc2xpdmVyLXNlcnZlciBkYWVtb24gJgp0b3AK" | base64 -d > /run.sh
echo -n "IyEvYmluL2Jhc2ggCmN1cmwgLWYgaHR0cDovL2xvY2FsaG9zdDozMTMzNyB8fCBleGl0IDEK" |base64 -d > /healthcheck.sh

chmod 700 /run.sh /healthcheck.sh
