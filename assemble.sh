#!/bin/bash
# transplant & edit: angel (see https://github.com/gb-2312)
# date: Thu Oct  7 16:20:43 CST 2021
# notice: Terminal only for MacOSX, Linux and MinGW
# usage: sh assemble.sh

NES_OUTPUT_SIMPLE_NAME=_lupin
NES_OUTPUT_FILE_SIZE=196624
NES_OUTPUT_FILE_SHA1_ORIGINAL="e5e5488c92114b7fa29ddbe6d3d3d7c101f0c4a7"
NES_OUTPUT_FAST_ASSEMBLY=1
NES_OUTPUT_LISTING_NAME=z_listing.asm
NES_OUTPUT_DEBUG_NAME=z_debug.txt
NES_OUTPUT_FILE_BACKUP=0
NES_OUTPUT_FILE_DIFF=0

# navigate to the directory
BASH_EXEC_DIR=$(dirname "$0")
# goto directory
cd "${BASH_EXEC_DIR}"

# common function(s) support
source build_scripts/os_support.sh
# environment function(s) support
source build_scripts/env.sh

# assemble-header function(s) support
source build_scripts/assemble_header.sh
# assemble-standard function(s) support
source build_scripts/assemble_standard.sh
# assemble-footer function(s) support
source build_scripts/assemble_footer.sh
