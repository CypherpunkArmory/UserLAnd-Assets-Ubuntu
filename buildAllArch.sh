#!/bin/bash

#./buildArch.sh arm
#./buildArch.sh arm64
#./buildArch.sh x86
#./buildArch.sh x86_64
cd release
md5sum *.tar.gz > MD5SUMS
