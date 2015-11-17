#!/bin/bash

ARCH="armv7"
IOSMV="-miphoneos-version-min=7.0"

export PATH=`xcodebuild -version -sdk iphoneos PlatformPath`"/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH"
export SDK=`xcodebuild -version -sdk iphoneos Path`
export CC="xcrun --sdk iphoneos clang -arch $ARCH $IOSMV --sysroot=$SDK -isystem $SDK/usr/include"
export CXX="xcrun --sdk iphoneos clang++ -arch $ARCH $IOSMV --sysroot=$SDK -isystem $SDK/usr/include"
export LDFLAGS="-Wl,-syslibroot,$SDK"

cd ogg
autoreconf -vif
./configure --host=arm-apple-darwin

cp config.h ../
cd ../

#git clean -f
#git clean -fd
