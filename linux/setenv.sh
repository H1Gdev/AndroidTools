#! /bin/bash

# execute with 'source' command.

ANDROID_STUDIO_LOCATION=~/Android/android-studio
ANDROID_SDK_LOCATION=~/Android/Sdk
ANDROID_NDK_LOCATION=$ANDROID_SDK_LOCATION/ndk
ANDROID_NDK_VERSION=21.3.6528147
ANDROID_CMAKE_LOCATION=$ANDROID_SDK_LOCATION/cmake
ANDROID_CMAKE_VERSION=3.10.2.4988404
ANDROID_CMDLINE_TOOLS_LOCATION=$ANDROID_SDK_LOCATION/cmdline-tools
ANDROID_CMDLINE_TOOLS_VERSION=latest

ANDROID_JAVA=$ANDROID_STUDIO_LOCATION/jre
ANDROID_JAVA_BIN=$ANDROID_JAVA/bin
ANDROID_SDK_TOOLS_PATH=$ANDROID_CMDLINE_TOOLS_LOCATION/$ANDROID_CMDLINE_TOOLS_VERSION/bin
if [ ! -d $ANDROID_SDK_TOOLS_PATH ]; then
  ANDROID_SDK_TOOLS_PATH=$ANDROID_SDK_LOCATION/tools/bin
fi
ANDROID_SDK_PLATFORM_TOOLS_PATH=$ANDROID_SDK_LOCATION/platform-tools
ANDROID_NDK_PATH=$ANDROID_NDK_LOCATION/$ANDROID_NDK_VERSION
ANDROID_CMAKE_PATH=$ANDROID_CMAKE_LOCATION/$ANDROID_CMAKE_VERSION/bin
PATH=$ANDROID_JAVA_BIN:$ANDROID_SDK_TOOLS_PATH:$ANDROID_SDK_PLATFORM_TOOLS_PATH:$ANDROID_NDK_PATH:$ANDROID_CMAKE_PATH:$PATH

export JAVA_HOME=$ANDROID_JAVA
export ANDROID_HOME=$ANDROID_SDK_LOCATION
export ANDROID_NDK_HOME=$ANDROID_NDK_PATH
export ANDROID_NDK=$ANDROID_NDK_PATH

cd $HOME
clear
