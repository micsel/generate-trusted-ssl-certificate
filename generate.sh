#!bin/bash

if [ ! -d $PWD/certificates ]; then
  mkdir -p $PWD/certificates;
fi
openssl req \
    -newkey rsa:2048 \
    -x509 \
    -nodes \
    -keyout certificates/server.key \
    -new \
    -out certificates/server.crt \
    -config ./openssl-custom.cnf \
    -sha256 \
    -days 365

openssl req \
    -newkey rsa:2048 \
    -x509 \
    -nodes \
    -keyout certificates/key.pem \
    -new \
    -out certificates/cert.pem \
    -config ./openssl-custom.cnf \
    -sha256 \
    -days 365
