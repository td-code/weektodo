#! /bin/bash
if [ "$TRAVIS_OS_NAME" == osx ]; then
  yarn electron:build -p always
else
  sudo apt install libarchive13=3.2.1-2~ubuntu16.04.1
  sudo apt-get install libarchive-tools
  sudo apt-get install bsdtar
  sudo apt-get update -qq
  sudo apt-get install snapd
  sudo snap install snapcraft --classic
  yarn electron:build --linux snap -p always
fi