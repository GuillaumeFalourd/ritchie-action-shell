#!/bin/sh -l

rit add repo --provider=Github --name=imported-repo --repoUrl=$1 --priority=1

sudo $2