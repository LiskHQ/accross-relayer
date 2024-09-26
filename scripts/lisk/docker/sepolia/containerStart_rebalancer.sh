#!/bin/bash

. $(dirname $(realpath "$0"))/setCommonEnv.sh

# Relaying OFF rebalancing ON
echo "SEND_RELAYS=false" >> ${env_file}
echo "SEND_REBALANCES=true"  >> ${env_file}

# Looping mode OFF
echo "POLLING_DELAY=0" >> ${env_file}
echo "All env vars are set."

node ${app_dir}/dist/index.js --relayer --wallet awskms --keys relayerKey
