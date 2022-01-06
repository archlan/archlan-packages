#!/usr/bin/env bash
# Set with the flags "-e", "-u","-o pipefail" cause the script to fail
# if certain things happen, which is a good thing.  Otherwise, we can
# get hidden bugs that are hard to discover.
set -euo pipefail

x86_pkgbuild=$(find ./x86_64 -type f -name "*.pkg.tar.zst*")

for x in ${x86_pkgbuild}
do
    mv "${x}" x86_64/
    echo "Moving ${x}"
done

echo "###########################"
echo "Building the repo database."
echo "###########################"

## Arch: x86_64
cd x86_64
rm -f archlan-packages*

echo "###################################"
echo "Building for architecture 'x86_64'."
echo "###################################"

## repo-add
## -s: signs the packages
## -n: only add new packages not already in database
## -R: remove old package files when updating their entry
repo-add -R archlan-packages.db.tar.gz *.pkg.tar.zst

# Removing the symlinks because GitLab can't handle them.
rm archlan-packages.db
rm archlan-packages.files

# Renaming the tar.gz files without the extension.
mv archlan-packages.db.tar.gz archlan-packages.db
mv archlan-packages.files.tar.gz archlan-packages.files

echo "#######################################"
echo "Packages in the repo have been updated!"
echo "#######################################"
