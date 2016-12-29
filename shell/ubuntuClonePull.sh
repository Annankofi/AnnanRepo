#!/bin/bash
#useage: . annan.sh clone
USER=zhuan
VERSION=5.1
#MODULES=$(cat modulelist)
MODULES="
abi
art
bionic
bootable
build
cts
dalvik
developers
development
device
docs
external
frameworks
hardware
libcore
libnativehelper
ndk
packages
pdk
prebuilts
rkst
sdk
system
tools
vendor
"
#Exclude module in 5.1
#manifest
#repo
#RKDocs
#kernel
#RKTools
#u-boot

case $1 in
clone | cloneAll)
    cloneAll;
    ;;
pull | pullAll)
    pullAll; 
    ;;
jdk | JDK)
   buildJDK;
    ;;
*)
    echo "Ignorant"  
    ;;
esac

#Function 
cloneAll(){
	for MOD in $MODULES
	do
		echo clone ssh://$USER@gerrit.yealink.com:29418/Android/$VERSION/rk312x/$MOD
		git clone ssh://$USER@gerrit.yealink.com:29418/Android/$VERSION/rk312x/$MOD
	done
}
 
 pullAll(){
	for MOD in $MODULES
	do
		echo pull $MOD
		cd $MOD
		git pull
		cd ..
	done
}

 buildJDK(){
	echo "jdk building.."  
	export JAVA_HOME=/home/zhuan/JDK/jdk1.7.0_79
	export PATH=$JAVA_HOME/bin:$PATH
	export CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar
	#export PATH="$PATH:/home/lusy/usr/bin"
	. build/envsetup.sh
 }


