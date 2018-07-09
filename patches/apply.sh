#!/bin/bash
 cd ../../../..

 cd packages/apps/Settings
 patch -p1 -b < ../../../device/Lenovo/A319/patches/android_settings_developer_info.patch
 git clean -f -d

 cd ../../../system/vold
 patch -p1 < ../../device/Lenovo/A319/patches/android_system_vold.patch
 
 cd ../sepolicy
 patch -p1 < ../../device/Lenovo/A319/patches/android_system_sepolicy.patch
 cd ../../external/icu
 patch -p1 < ../../device/Lenovo/A319/patches/android_external_icu.patch

 cd ../../frameworks/av
 patch -p1 < ../../device/Lenovo/A319/patches/android_frameworks_av.patch

 cd ..
 cd base/api
 mkdir ../../../device/Lenovo/A319/backup
 cp current.txt ../../../device/Lenovo/A319/backup/current.txt
 cp system-current.txt ../../../device/Lenovo/A319/backup/system-current.txt
 cd ..
 patch -p1 < ../../device/Lenovo/A319/patches/android_frameworks_base.patch

 cd ../..
 cd packages/apps/FMRadio
 patch -p1 < ../../../device/Lenovo/A319/patches/android_packages_apps_FMRadio.patch

 cd ../../../

 echo Successfuly patched!
