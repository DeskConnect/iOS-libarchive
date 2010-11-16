LibArchive Static Library for iOS
=================================

Unfortunately, while `libarchive.dylib` and `libbz2.dylib` are included in the iOS SDK, the header files are not. This means that they are private APIs and cannot be used if you intend to submit to the App Store.

Never fear! This repository contains everything you need to build a static version of `libarchive` for iOS. `libbz2` is also included for extra goodness.

To keep naming of things sane, we build the library as `libarc.a`. 

**If you just want to get going for iOS 4.2+**, grab the header files and library in the `build-for-iOS-4.2-8C134` directory.

**If you need to build this for a different version of iOS**, you can easily modify the `build.sh` script to point to whatever SDKs you like. It should build fine on 3.x.

One last note: `libarc.a` links dynamically to `libz.dylib` -- this is okay since, for whatever reason, AAPL saw fit to include the `libz` headers in the iOS SDK.





