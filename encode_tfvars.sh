#!/usr/bin/env bash

set -exuo pipefail

TEXT=$(gzip -9 -c terraform.tfvars.json | base64)

echo $TEXT

if [ -e $(which pbcopy) ]; then
  echo $TEXT | pbcopy
fi
