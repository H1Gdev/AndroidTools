@echo off
set ANDROID_SDK_LOCATION=C:\Android\Sdk
set ANDROID_NDK_LOCATION=%ANDROID_SDK_LOCATION%\ndk
set ANDROID_NDK_VERSION=21.0.6113669

set ANDROID_SDK_TOOLS_PATH=%ANDROID_SDK_LOCATION%\tools;%ANDROID_SDK_LOCATION%\platform-tools
set ANDROID_NDK_PATH=%ANDROID_NDK_LOCATION%\%ANDROID_NDK_VERSION%
title Android SDK Tools
set PATH=%ANDROID_SDK_TOOLS_PATH%;%ANDROID_NDK_PATH%;%PATH%
cls
cmd
@echo on
