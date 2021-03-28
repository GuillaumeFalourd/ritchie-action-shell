#!/bin/sh -l

result = sudo $1
echo "::set-output name=result::$result"