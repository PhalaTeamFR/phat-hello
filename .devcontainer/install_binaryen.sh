#!/bin/sh
echo "wget source"
wget https://github.com/WebAssembly/binaryen/releases/download/version_111/binaryen-version_111-x86_64-linux.tar.gz -P /tmp/
echo "untar source"
tar -xzf /tmp/binaryen-version_111-x86_64-linux.tar.gz --directory /tmp/
echo "cp into /usr/bin"
cp -a /tmp/binaryen-version_111/bin/* /usr/bin/
echo "rm source files"
rm -Rf /tmp/binaryen-version_111*