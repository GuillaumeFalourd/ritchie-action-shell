#!/bin/sh -l

if [ -z "$CREDENTIAL_GITHUB_TOKEN" ]
then
      echo "\033[36mPUBLIC\033[0m 🔓 repository workflow detected"
      # Import public formula repository command
      sudo rit add repo --provider=Github --name=imported-repo --repoUrl=$1 --priority=1
else
      echo "\033[36mPRIVATE\033[0m 🔐 repository workflow detected"
      # Add Github user credentials
      sudo rit set credential --provider=github --fields=username,token --values="$CREDENTIAL_GITHUB_USERNAME","$CREDENTIAL_GITHUB_TOKEN"
      # Import private formula repository command
      sudo rit add repo --provider=Github --name=imported-repo --repoUrl=$1 --priority=1 --token=$CREDENTIAL_GITHUB_TOKEN
fi

# Execute formula command
sudo $2