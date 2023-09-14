#!/bin/bash

export BOOTNODE_1="enode://af3a4e4497ab7b751b7b94f3de6ae97a4e51213fb86b1b541f67876a493e9e2eee8a20cf460b806af11f58325919aa1284791d23dca06f99e668ad9ca1da65de@172.21.0.2:30303"
export BOOTNODE_2="enode://dd8df83247e94663ee3570a8a86689fa3501b2e3fdf3855a54502b3f1a5f8558de223863ccecf4ac4bb5467a9ec22a60d9b3f5d15c39e77b60bdd33295a9220a@172.21.0.3:30303"
export BOOTNODE_3="enode://eebaa862804af1ea44ae0434aae95308068d5802953612cee4793e2be1f992bc94d90dbf6a391c44f0a5386d3196cc6d79408eebe93e200fe937a76ad0b62829@172.21.0.4:30303"
export BOOTNODE_4="enode://8a9fd372d1dfdda4b8cf8db0b04acb03721e16e7bdba80ea376cde8fc74679a7c43b77e6626bb2117a319113924c3bf2f2508a3243008eb11b41e1e8a635b397@172.21.0.5:30303"
if [ $VALIDATOR -eq 0 ]
then
    besu --data-path="/node/data" --bootnodes="$BOOTNODE_1,$BOOTNODE_2,$BOOTNODE_3,$BOOTNODE_4" --nat-method=NONE --p2p-host=$(hostname -i) --p2p-port=30303 --rpc-http-enabled --rpc-http-api=ETH,NET,QBFT,ADMIN --host-allowlist="*" --rpc-http-cors-origins="all" --rpc-http-host=$(hostname -i) --rpc-http-port=8545
else
    besu --data-path="/node/data" --genesis-file="/node/genesis.json" --nat-method=NONE --p2p-host=$(hostname -i) --p2p-port=30303 --rpc-http-enabled --rpc-http-api=ETH,NET,QBFT,ADMIN --host-allowlist="*" --rpc-http-cors-origins="all" --rpc-http-host=$(hostname -i) --rpc-http-port=8545
fi