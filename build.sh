#!/bin/sh

cd arc
mkdir lib

xcodebuild -sdk iphonesimulator -target archive-ios clean build
mv lib/libarchive-ios.a lib/libarchive-iossimulator.a
xcodebuild -sdk iphoneos -target archive-ios clean build
lipo -output lib/libarchive-ios.a -create lib/libarchive-ios.a lib/libarchive-iossimulator.a

rm lib/libarchive-iossimulator.a

xcodebuild -sdk watchsimulator -target archive-watch clean build
mv lib/libarchive-watch.a lib/libarchive-watchsimulator.a
xcodebuild -sdk watchos -target archive-watch clean build
lipo -output lib/libarchive-watch.a -create lib/libarchive-watch.a lib/libarchive-watchsimulator.a

rm lib/libarchive-watchsimulator.a

xcodebuild -sdk appletvsimulator -target archive-tv clean build
mv lib/libarchive-tv.a lib/libarchive-appletvsimulator.a
xcodebuild -sdk appletvos -target archive-tv clean build
lipo -output lib/libarchive-tv.a -create lib/libarchive-tv.a lib/libarchive-appletvsimulator.a

rm lib/libarchive-appletvsimulator.a

xcodebuild -target archive-mac clean build
