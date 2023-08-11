#!/bin/sh -l

sudo apt-get update
sudo apt-get install cmake python3 -y
git clone --depth 1 https://github.com/rajibdpi/directory-listing-for-github-page.git
cd directory-listing-for-github-page
cmake . -DCMAKE_INSTALL_PREFIX=/usr
sudo make install
cd ..
rm -rf directory-listing-for-github-page/
directory-listing-for-github-page $1/.
