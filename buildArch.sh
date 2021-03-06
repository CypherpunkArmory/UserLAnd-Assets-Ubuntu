#!/bin/bash

docker-compose -f main.yml -f $1.yml down
docker-compose -f main.yml -f $1.yml build
docker-compose -f main.yml -f $1.yml up
mkdir -p release
cp output/rootfs.tar.gz release/$1-rootfs.tar.gz
mkdir -p release/support
cp assets/all/* release/support/
rm release/support/assets.txt
cp output/busybox release/support/
cp output/libdisableselinux.so release/support/
chmod 777 release/support/*
cd release
gunzip $1-rootfs.tar.gz
tar rvf $1-rootfs.tar support
gzip $1-rootfs.tar
rm -rf support
