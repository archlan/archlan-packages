#!/bin/bash

# Script used to automatically sign the packages in an Arch Linux package repository.
# Maintainer: Lanhild @archlan

# The email variable has to be changed for the email you want to use for signing
email="archlan@protonmail.com"

# This indicates the directory where to look the packages for
pkgdir="`pwd`/x86_64"

# This variable enumerates all the packages in the $pkgdir
pkglist=`ls ${pkgdir}/*.pkg.tar.zst`

# This is the actual function signing all the packages
sign_pkgs() {
    if [[ -d "$pkgdir" ]]; then
        for eachfile in $pkglist
            do
                gpg --default-key $email --output $eachfile.sig --detach-sig $eachfile
        done
    else
        echo -e "[!] Failed to sign packages. Verify the package directory and try again. \n"
        exit 1
    fi
}

main() {
    clear
    cat <<- EOF
		[*] Signing Packages Files...
	
	EOF

        if [[ -d "$pkgdir" ]]; then
            # Remove the old package signatures first
            rm -rf ${pkgdir}/*.sig

            # Execute the packages signing function
            sign_pkgs
        else
            echo -e "[!] Failed to sign packages. Verify the package directory and try again. \n"
            exit 1
        fi
}

main