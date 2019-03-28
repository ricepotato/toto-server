#!/bin/bash

docker run \
-i -t --rm \
-v ~/storage:/incomming \
-p 445:445 \
-p 139:139 \
-p 137:137/udp \
-p 138:138/udp \
--name ricepotato_smb \
ricepotato_smb:latest

