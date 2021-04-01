#!/bin/sh -l

# Add Github user credentials
sudo rit set credential --provider=github --fields=username,token --values="$CREDENTIAL_GITHUB_USERNAME","$CREDENTIAL_GITHUB_TOKEN"

# Import formula repository command
sudo rit add repo --provider=Github --name=imported-repo --repoUrl=$1 --priority=1 --token=$CREDENTIAL_GITHUB_TOKEN

# Execute formula command
sudo $2