#!/bin/bash

tar -xvf portainer-2.21.3-linux-amd64.tar.gz

cd portainer

chmod +x portainer

echo -n $PORTAINER_PWD > pwd

./portainer --data /port-data --admin-password-file ./pwd -p 0.0.0.0:4242