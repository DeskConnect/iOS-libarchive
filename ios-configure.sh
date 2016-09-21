#!/bin/sh

# The device's architecture
export ARCH="arm64"
export HOST="aarch64-apple-darwin"

# SDK setup
export SDKVER="10.0"
export SDKROOT="/Applications/Xcode8.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS$SDKVER.sdk"

# Install location
export PREFIX="/tmp/iphone-$SDKVER-$ARCH"

# Binaries
#export CPP="clang
export CC="clang"
export CXX="clang++"

export PKG_CONFIG_PATH="$SDKROOT/usr/lib/pkgconfig":"$PREFIX/lib/pkgconfig"

# Flags
export CPPFLAGS="-arch $ARCH -isysroot $SDKROOT -I$PREFIX/include"
export CFLAGS="-std=gnu99"
export CXXFLAGS="-std=gnu++11 -stdlib=libc++"
export LDFLAGS="-arch $ARCH -isysroot $SDKROOT -L$PREFIX/lib"

# Run configure 
./configure \
	--prefix="$PREFIX" \
	--host="$HOST" \
	--enable-static \
	--disable-shared $@

