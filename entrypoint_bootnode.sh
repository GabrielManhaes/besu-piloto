#!/bin/bash

besu --data-path=$BESU_IDENTITY/data --genesis-file=$BESU_IDENTITY/genesis.json --p2p-port=$P2P_PORT --rpc-http-enabled --rpc-http-api=ETH,NET,QBFT --host-allowlist="*" --rpc-http-cors-origins="all"