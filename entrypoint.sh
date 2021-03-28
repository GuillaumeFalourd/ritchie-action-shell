#!/bin/sh -l

rit add repo --provider=Github --name=imported-repo --repoUrl=$1 --priority=1

echo "teste"

sudo rit demo coffee-shell --rit_name=Dennis --rit_coffee_type=espresso --rit_delivery=false

echo "sudo $2"

sudo $2