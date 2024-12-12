#!/bin/bash 

D=/$GITPOD_REPO_ROOT/$NGINX_DOCROOT_IN_REPO

mkdir -p $D

# Create 100 binary files
for i in {1..100}; do
    dd if=/dev/zero of=$D/file${i}.bin bs=1M count=10 >/dev/null 2>&1
done