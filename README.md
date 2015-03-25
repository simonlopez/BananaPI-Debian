1. SDK for ARM 
2. Use proven sources and configurations
3. Create SD images for various boards: Cubieboard 1, Cubieboard 2, Cubietruck, BananaPi, BananaPi, BananaPi PRO, Banana Pi R1, Cubox, Humminboard, Olimex Lime, Olimex Lime 2, Olimex Micro, Orange Pi, Udoo quad

4. Well documented, maintained & easy to use
5. Boot loaders and kernel images are compiled and cached.
```bash
#!/bin/bash
# 
# Edit and execute this script - Ubuntu 14.04 x86/64 recommended
#

# method
SOURCE_COMPILE="yes"						# force source compilation: yes / no
KERNEL_CONFIGURE="no"						# want to change my default configuration
KERNEL_CLEAN="yes"							# run MAKE clean before kernel compilation
USEALLCORES="yes"							# Use all CPU cores for compiling
   
# user 
DEST_LANG="en_US.UTF-8" 	 				# sl_SI.UTF-8, en_US.UTF-8
TZDATA="Europe/Ljubljana" 					# Timezone
ROOTPWD="1234"   		  					# Must be changed @first login
MAINTAINER="Igor Pecovnik"					# deb signature
MAINTAINERMAIL="igor.pecovnik@****l.com"	# deb signature
    
# advanced
KERNELTAG="v3.19"							# which kernel version - valid only for mainline
FBTFT="yes"									# https://github.com/notro/fbtft 
EXTERNAL="yes"								# compile extra drivers`

#---------------------------------------------------------------------------------------

# source is where we start the script
SRC=$(pwd)

# destination
DEST=$(pwd)/output                      		      	

# get updates of the main build libraries
if [ -d "$SRC" ]; then
	cd $SRC
	git pull 
else
	# download SDK
	apt-get -y -qq install git
	git clone https://github.com/igorpecovnik/lib
fi

source $SRC/main.sh
#---------------------------------------------------------------------------------------
```
