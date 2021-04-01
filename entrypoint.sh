#!/bin/sh -l

# Add Github user credentials
sudo rit set credential --provider=github --fields=username,token --values="$GITHUB_ACTOR","$GITHUB_TOKEN"

sudo rit list credential

# Import formula repository command
sudo rit add repo --provider=Github --name=imported-repo --repoUrl=$1 --priority=1

# Execute formula command
sudo $2