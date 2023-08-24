#!/bin/bash

for dir in  main backend app2 app3 
do 
    cd ~/f5-arcadia/arcadia-unit-kic/1.docker-images-preparation/$dir
    docker build . -t "harbor.1broken.net/f5-arcadia/arcadia-$dir:unit"
    docker push "harbor.1broken.net/f5-arcadia/arcadia-$dir:unit"
done
