#!/bin/bash

CN={{ registry_dns }}
CrtName='registry'

mkdir /certs;cd /certs

openssl req -x509 -days 3650 -subj "/CN=${CN}/" -nodes -newkey rsa:4096 -sha256 -keyout ${CrtName}.key -out ${CrtName}.crt
