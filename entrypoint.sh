#!/bin/sh -l

rit add repo --provider=Github --name=imported-repo --repoUrl=$1 --priority=1

echo $2

sudo $2