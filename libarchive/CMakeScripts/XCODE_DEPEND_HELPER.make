# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.archive.Debug:
/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Debug/libarchive.dylib:\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Debug/libarchive.dylib


PostBuild.archive_static.Debug:
/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Debug/libarchive.a:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Debug/libarchive.a


PostBuild.bsdcat.Debug:
PostBuild.archive_static.Debug: /Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdcat
/Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdcat:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Debug/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdcat


PostBuild.bsdcat_test.Debug:
/Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdcat_test:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdcat_test


PostBuild.bsdcpio.Debug:
PostBuild.archive_static.Debug: /Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdcpio
/Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdcpio:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Debug/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdcpio


PostBuild.bsdcpio_test.Debug:
/Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdcpio_test:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdcpio_test


PostBuild.bsdtar.Debug:
PostBuild.archive_static.Debug: /Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdtar
/Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdtar:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Debug/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdtar


PostBuild.bsdtar_test.Debug:
/Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdtar_test:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/bsdtar_test


PostBuild.libarchive_test.Debug:
PostBuild.archive_static.Debug: /Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/libarchive_test
/Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/libarchive_test:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Debug/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/Debug/libarchive_test


PostBuild.archive.Release:
/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Release/libarchive.dylib:\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Release/libarchive.dylib


PostBuild.archive_static.Release:
/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Release/libarchive.a:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Release/libarchive.a


PostBuild.bsdcat.Release:
PostBuild.archive_static.Release: /Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdcat
/Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdcat:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Release/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdcat


PostBuild.bsdcat_test.Release:
/Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdcat_test:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdcat_test


PostBuild.bsdcpio.Release:
PostBuild.archive_static.Release: /Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdcpio
/Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdcpio:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Release/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdcpio


PostBuild.bsdcpio_test.Release:
/Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdcpio_test:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdcpio_test


PostBuild.bsdtar.Release:
PostBuild.archive_static.Release: /Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdtar
/Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdtar:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Release/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdtar


PostBuild.bsdtar_test.Release:
/Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdtar_test:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/bsdtar_test


PostBuild.libarchive_test.Release:
PostBuild.archive_static.Release: /Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/libarchive_test
/Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/libarchive_test:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Release/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/Release/libarchive_test


PostBuild.archive.MinSizeRel:
/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/MinSizeRel/libarchive.dylib:\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/libarchive/MinSizeRel/libarchive.dylib


PostBuild.archive_static.MinSizeRel:
/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/MinSizeRel/libarchive.a:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/libarchive/MinSizeRel/libarchive.a


PostBuild.bsdcat.MinSizeRel:
PostBuild.archive_static.MinSizeRel: /Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdcat
/Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdcat:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/MinSizeRel/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdcat


PostBuild.bsdcat_test.MinSizeRel:
/Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdcat_test:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdcat_test


PostBuild.bsdcpio.MinSizeRel:
PostBuild.archive_static.MinSizeRel: /Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdcpio
/Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdcpio:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/MinSizeRel/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdcpio


PostBuild.bsdcpio_test.MinSizeRel:
/Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdcpio_test:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdcpio_test


PostBuild.bsdtar.MinSizeRel:
PostBuild.archive_static.MinSizeRel: /Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdtar
/Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdtar:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/MinSizeRel/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdtar


PostBuild.bsdtar_test.MinSizeRel:
/Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdtar_test:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/bsdtar_test


PostBuild.libarchive_test.MinSizeRel:
PostBuild.archive_static.MinSizeRel: /Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/libarchive_test
/Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/libarchive_test:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/MinSizeRel/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/MinSizeRel/libarchive_test


PostBuild.archive.RelWithDebInfo:
/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/RelWithDebInfo/libarchive.dylib:\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/libarchive/RelWithDebInfo/libarchive.dylib


PostBuild.archive_static.RelWithDebInfo:
/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/RelWithDebInfo/libarchive.a:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/libarchive/RelWithDebInfo/libarchive.a


PostBuild.bsdcat.RelWithDebInfo:
PostBuild.archive_static.RelWithDebInfo: /Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdcat
/Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdcat:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/RelWithDebInfo/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdcat


PostBuild.bsdcat_test.RelWithDebInfo:
/Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdcat_test:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdcat_test


PostBuild.bsdcpio.RelWithDebInfo:
PostBuild.archive_static.RelWithDebInfo: /Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdcpio
/Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdcpio:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/RelWithDebInfo/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdcpio


PostBuild.bsdcpio_test.RelWithDebInfo:
/Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdcpio_test:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdcpio_test


PostBuild.bsdtar.RelWithDebInfo:
PostBuild.archive_static.RelWithDebInfo: /Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdtar
/Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdtar:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/RelWithDebInfo/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdtar


PostBuild.bsdtar_test.RelWithDebInfo:
/Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdtar_test:
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/bsdtar_test


PostBuild.libarchive_test.RelWithDebInfo:
PostBuild.archive_static.RelWithDebInfo: /Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/libarchive_test
/Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/libarchive_test:\
	/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/RelWithDebInfo/libarchive.a\
	/usr/lib/libz.dylib\
	/usr/lib/libbz2.dylib\
	/usr/local/lib/liblzma.dylib\
	/usr/lib/libiconv.dylib\
	/usr/lib/libcharset.dylib\
	/usr/lib/libxml2.dylib
	/bin/rm -f /Users/seemoo/Downloads/libarchive-3.4.3/bin/RelWithDebInfo/libarchive_test




# For each target create a dummy ruleso the target does not have to exist
/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Debug/libarchive.a:
/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/MinSizeRel/libarchive.a:
/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/RelWithDebInfo/libarchive.a:
/Users/seemoo/Downloads/libarchive-3.4.3/libarchive/Release/libarchive.a:
/usr/lib/libbz2.dylib:
/usr/lib/libcharset.dylib:
/usr/lib/libiconv.dylib:
/usr/lib/libxml2.dylib:
/usr/lib/libz.dylib:
/usr/local/lib/liblzma.dylib:
