#!/bin/bash

[ "${USER}" == "aosp" ] && exit 0

dirx="${PWD:${#HOME}}"		# remove /ssd2/workspace/erwin-hud/hud_bsp
dirx=${dirx#/}			# remove /
ssdx="${dirx:0:4}"
name=$(echo "$dirx" | sed 's/\//./g')
#dirx=${dirx#*/}			# remove ssd2
vdir="/mnt/aosp/$dirx"
cdir="$vdir/ccache"

#docker run -e WORK_DIR=$vdir -v $HOME:/mnt/aosp -it --rm --name $name erwinchang/glsdk /bin/bash

mdir="/home/${USER}/$dirx"
#home is workdir
echo "docker run -e WORK_DIR=/home/aosp -v $mdir:/home/aosp -it --rm --name $name erwinchang/autosdk /bin/bash"
docker run -e WORK_DIR=/home/aosp -v $mdir:/home/aosp -it --rm --name $name erwinchang/autosdk /bin/bash
