#!/bin/sh -l

echo "sudo $1"
result = "sudo $1"
echo "::set-output name=result::$result"