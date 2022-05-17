#!/usr/bin/bash

cd ~/Projects/forgerock/huckops && ./startMinikubeSkaffold.sh -n -d kvm2
cd ../platform-ui
./startSkaffold.sh
