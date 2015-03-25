#!/bin/bash
#
# Created by Igor Pecovnik, www.igorpecovnik.com
#
# Configuration 
#--------------------------------------------------------------------------------------------------------------------------------

BOARD="bananapi"						# bananapi
BRANCH="default"						# default=3.4.x, mainline=next
RELEASE="wheezy"                                   		# jessie, wheezy or trusty

# numbers
SDSIZE="2048"                               			# SD image size in MB
REVISION="2.0"                          			# image release version

# method
SOURCE_COMPILE="yes"             				# force source compilation: yes / no
KERNEL_CONFIGURE="no"           				# want to change my default configuration
KERNEL_CLEAN="yes"						# run MAKE clean before kernel compilation
USEALLCORES="yes"                           			# Use all CPU cores for compiling

# user 
DEST_LANG="en_US.UTF-8"                     			# sl_SI.UTF-8, en_US.UTF-8
TZDATA="Europe/Paris"		              			# Timezone
ROOTPWD="root"                              			# Must be changed @first login
MAINTAINER="Simon Lopez"                  			# deb signature
MAINTAINERMAIL="simon.lopez@worldline.com"    			# deb signature

# advanced
FBTFT="no"                                 			# https://github.com/notro/fbtft 
EXTERNAL="no"                           			# compile extra drivers`

#--------------------------------------------------------------------------------------------------------------------------------

# source is where we start the script
SRC=$(pwd)

# destination
DEST=$(pwd)/output

source main.sh
#--------------------------------------------------------------------------------------------------------------------------------

