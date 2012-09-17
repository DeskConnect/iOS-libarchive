#!/bin/sh

# Quick hack to build libarc.a suitable for both simulator and device.

SDK_VERSION=6.0

cd arc
xcodebuild -sdk iphoneos$SDK_VERSION "ARCHS=armv6 armv7 armv7s" clean build
xcodebuild -sdk iphonesimulator$SDK_VERSION "ARCHS=i386 x86_64" "VALID_ARCHS=i386 x86_64" clean build
lipo -output build/libarc.a -create build/Release-iphoneos/libarc.a build/Release-iphonesimulator/libarc.a
