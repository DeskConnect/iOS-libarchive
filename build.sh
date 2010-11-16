#!/bin/sh

# Quick hack to build libarc.a suitable for both simulator and device.
# It builds against 4.2.

cd arc
xcodebuild -sdk iphoneos4.2 "ARCHS=armv6 armv7" clean build
xcodebuild -sdk iphonesimulator4.2 "ARCHS=i386 x86_64" "VALID_ARCHS=i386 x86_64" clean build
lipo -output build/libarc.a -create build/Release-iphoneos/libarc.a build/Release-iphonesimulator/libarc.a
