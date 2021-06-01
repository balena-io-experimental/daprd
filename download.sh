#!/bin/sh

version="1.2.0"
outfile="/tmp/daprd.tar.gz"
download_base="https://github.com/dapr/dapr/releases/download/v$version/"
case $1 in
   "rpi")  package_file="daprd_linux_arm.tar.gz"
       ;;
   "aarch64") package_file="daprd_linux_arm64.tar.gz"
       ;;
   "amd64") package_file="daprd_linux_amd64.tar.gz"
       ;;
   "armv7hf") package_file="daprd_linux_arm.tar.gz"
       ;;
   *) echo >&2 "error: unsupported architecture ($1)"; exit 1 ;; 
esac

wget -O  "${outfile}" "${download_base}${package_file}" 

tar -xvf $outfile -C /usr/src/app