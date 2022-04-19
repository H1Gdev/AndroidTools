@echo off

set SCRIPT_PATH=%~dp0
call %SCRIPT_PATH%setenv.bat call

set ANDROID_SDK_PLATFORM_VERSION=android-28
set ANDROID_SDK_BUILD_TOOL_VERSION=28.0.3

rem https://developer.android.com/studio/command-line/sdkmanager
echo [sdkmanager]version
call sdkmanager --version
where sdkmanager

call sdkmanager --install ^
 "platform-tools" ^
 "platforms;%ANDROID_SDK_PLATFORM_VERSION%" ^
 "build-tools;%ANDROID_SDK_BUILD_TOOL_VERSION%" ^
 "cmdline-tools;%ANDROID_CMDLINE_TOOLS_VERSION%" ^
 "ndk;%ANDROID_NDK_VERSION%" ^
 "cmake;%ANDROID_CMAKE_VERSION%"

pause
@echo on
