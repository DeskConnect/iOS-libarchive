#!/bin/sh
make -C /Users/seemoo/Downloads/libarchive-3.4.3/libarchive -f /Users/seemoo/Downloads/libarchive-3.4.3/libarchive/CMakeScripts/archive_postBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
