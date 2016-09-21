#!/bin/sh

IPHONE_SDK_VERSION=10.0
TV_SDK_VERSION=$IPHONE_SDK_VERSION
MAC_SDK_VERSION=10.12
WATCH_SDK_VERSION=3.0

cd arc
xcodebuild -sdk iphoneos -target archive-ios clean build
xcodebuild -sdk iphonesimulator -target archive-ios clean build
lipo -output build/libarchive-ios.a -create build/Release-iphoneos/libarchive-ios.a build/Release-iphonesimulator/libarchive-ios.a

xcodebuild -sdk watchos -target archive-watch clean build
xcodebuild -sdk watchsimulator -target archive-watch clean build
lipo -output build/libarchive-watch.a -create build/Release-watchos/libarchive-watch.a build/Release-watchsimulator/libarchive-watch.a

xcodebuild -sdk appletvos -target archive-tv clean build
xcodebuild -sdk appletvsimulator -target archive-tv clean build
lipo -output build/libarchive-tv.a -create build/Release-appletvos/libarchive-tv.a build/Release-appletvsimulator/libarchive-tv.a

xcodebuild -target archive-mac clean build
cp build/Release/libarchive-mac.a build/libarchive-mac.a
