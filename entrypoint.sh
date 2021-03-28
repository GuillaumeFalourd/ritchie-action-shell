#!/bin/sh -l

sudo rit add repo --provider=Github --name=imported-repo --repoUrl=$1 --priority=1

echo "PATH -------------"
find / -name ".rit"
echo "/RIT -------------"
ls -lha /root/.rit
echo "GITHUB -------------"
ls -lha /github/home
echo "GITHUB RIT -------------"
ls -lha /github/home/.rit

sudo $2