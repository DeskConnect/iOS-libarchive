#!/bin/sh

cd arc
mkdir lib

xcodebuild -sdk iphoneos -target archive-ios clean build

xcodebuild -target archive-mac clean build

lipo -output lib/libarchive-ios-mac.a -create lib/libarchive-ios.a lib/libarchive-mac.a
