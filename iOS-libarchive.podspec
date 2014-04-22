Pod::Spec.new do |s|
  s.name         = "iOS-libarchive"
  s.version      = "0.1"
  s.summary      = "This repository contains everything you need to build a static version of libarchive for iOS."

  s.description  = <<-DESC
                   LibArchive Static Library for iOS
                   =================================

                   Unfortunately, while `libarchive.dylib` and `libbz2.dylib` are included in the
                   iOS SDK, the header files are not. This means that they are private APIs and
                   cannot be used if you intend to submit to the App Store.

                   Never fear! This repository contains everything you need to build a static
                   version of `libarchive` for iOS. `libbz2` is also included for extra goodness.

                   To keep naming of things sane, we build the library as `libarc.a`. 

                   **For iOS 4.3+** copy the header files and library from the `build-for-iOS-4.3`
                   directory into your project.

                   **For iOS 4.2** copy the header files and library from the `build-for-iOS-4.2`
                   directory into your project.

                   **If you need to build this for an earlier version of iOS**, you can easily
                   modify the `build.sh` script to point to whatever SDKs you like. It should
                   build fine on 3.x.

                   **TO GET IT FULLY LINKING** you must also include `libz.dylib` in your list of
                   linked libraries. To do this in XCode 4, click on your project, choose the
                   `Build Phases` tab, go to `Link Binary With Libraries`, press `+`, and choose
                   `libz.dylib` from the (long) list of possible libraries to link against. This
                   is because `libarc.a` links dynamically to `libz.dylib` -- this is okay since,
                   for whatever reason, AAPL saw fit to include the `libz` headers in the iOS SDK.

                   The current `libarchive` version is `2.8.4`. The `bzlib2` version is `1.0.6`.
                   DESC

  s.homepage     = "https://github.com/davepeck/iOS-libarchive"

  s.license      = "BSD"
  
  s.author             = 'Kenneth Ballenegger', 'Dave Peck', 'Jonathan Saggau'

  s.ios.deployment_target = "7.0"
  s.osx.deployment_target = "10.9"

  s.source       = { :git => "https://bitbucket.org/Enharmonic/ios-libarchive-mirror.git", :tag => "0.1" }


  s.source_files  = "libarchive/libarchive", "bzip2/blocksort.c", "bzip2/bzlib.c", "bzip2/compress.c", "bzip2/crctable.c", "bzip2/decompress.c", "bzip2/huffman.c", "bzip2/randtable.c", "arc"
  s.library   = "z"

  s.requires_arc = false
  s.xcconfig = {  'OTHER_CFLAGS' => '$(inherited) -DPLATFORM_CONFIG_H=\"libarchive_custom_config.h\"'}

  #s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SRCROOT)/contrib/libarchive/libarchive/libarchive"}

end
