#! /bin/bash

SCRIPT_PATH=$(dirname $0)
source $SCRIPT_PATH/setenv.sh

ANDROID_SDK_PLATFORM_VERSION=android-28
ANDROID_SDK_BUILD_TOOL_VERSION=28.0.3

# https://developer.android.com/studio/command-line/sdkmanager
echo "[sdkmanager]version $(sdkmanager --version) ($(which sdkmanager))"

sdkmanager --install \
 "platform-tools" \
 "platforms;$ANDROID_SDK_PLATFORM_VERSION" \
 "build-tools;$ANDROID_SDK_BUILD_TOOL_VERSION" \
 "cmdline-tools;$ANDROID_CMDLINE_TOOLS_VERSION" \
 "ndk;$ANDROID_NDK_VERSION" \
 "cmake;$ANDROID_CMAKE_VERSION" \
