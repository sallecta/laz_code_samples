#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Linking /media/data/development/lazarus/lazarus_git_projects/laz_code_samples/resourcelessBGRAControlsDemo/application/resourcelessBGRAControlsDemo.unix.x86_64
OFS=$IFS
IFS="
"
/usr/bin/ld -b elf64-x86-64 -m elf_x86_64  --dynamic-linker=/lib64/ld-linux-x86-64.so.2    -L. -o /media/data/development/lazarus/lazarus_git_projects/laz_code_samples/resourcelessBGRAControlsDemo/application/resourcelessBGRAControlsDemo.unix.x86_64 /media/data/development/lazarus/lazarus_git_projects/laz_code_samples/resourcelessBGRAControlsDemo/application/link.res
if [ $? != 0 ]; then DoExitLink /media/data/development/lazarus/lazarus_git_projects/laz_code_samples/resourcelessBGRAControlsDemo/application/resourcelessBGRAControlsDemo.unix.x86_64; fi
IFS=$OFS
