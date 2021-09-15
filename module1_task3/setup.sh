#!/bin/sh

apt update && apt install -y hugo make

make build
