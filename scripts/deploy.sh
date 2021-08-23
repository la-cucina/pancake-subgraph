#!/usr/bin/env bash

# Exit script as soon as a command fails.
set -o errexit

NETWORK=$1
ACCESS_TOKEN=$2

if [ -z "$ACCESS_TOKEN" ]
then
  echo "USAGE of 'ACCESS_TOKEN': must be the access token obtained from thegraph.com."
  exit 1
fi

if [ -z "$NETWORK" ]
then
  echo "USAGE of 'NETWORK': must be the network on which this subgraph is going to be deployed to."
  exit 1
fi

yarn codegen:$NETWORK:exchange
yarn build:$NETWORK:exchange
npx graph auth --product hosted-service $ACCESS_TOKEN
yarn deploy:$NETWORK:exchange