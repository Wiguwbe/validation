#!/bin/sh


# only install make through apt
apt update && apt install -y make curl

# install Hugo from upstream
curl -L 'https://github.com/gohugoio/hugo/releases/download/v0.80.0/hugo_extended_0.80.0_Linux-64bit.tar.gz' -o /tmp/hugo.tar.gz

DWD=$(pwd)
cd /usr/bin
tar -xzvf /tmp/hugo.tar.gz hugo
cd $DWD

make build
