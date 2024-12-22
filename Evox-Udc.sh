#!/bin/bash
rm -rf .repo/local_manifests/
repo init -u https://github.com/Evolution-X/manifest -b udc --git-lfs
git clone -b Evox-Udc https://github.com/FrhnDroid/local_manifests.git .repo/local_manifests
/opt/crave/resync.sh
. build/envsetup.sh
export TZ=Asia/Ipoh
export BUILD_USERNAME=Jayzee
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
. build/envsetup.sh
lunch lineage_earth-user
m evolution
