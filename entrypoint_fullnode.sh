#!/bin/bash

export BOOTNODE_1="enode://0x3ddb354fdba143448c9beb0502eec7c0023273272c9423b0f322a22ad32a42d33a1d5ec7b13e25e773244c0ce123fff8bb838bf4ddda6bd2e7a79f651ff29a9f@fullnode-bcb-1:30303"
export BOOTNODE_2="enode://0x7eac58ca6b9bc637a44ab4e4f3f3316c52178a5d2934013a95892001f7c14448abe495f3fb31321bcdb3d22e84fd1736ea09edbf785e2a4db1fef25a4ad770a1@fullnode-bcb-2:30304"
export BOOTNODE_3="enode://0xd88d7b701a774671cf99555ce118d1770d16def3b6589085d07bd071affaff7916231eac473dbb04073c36083ef4dd2440fc5627502ec6b0b2c9f585985f94b5@fullnode-selic-1:30305"
export BOOTNODE_4="enode://0x50066c27dab54c1fb307e1a0060982fbc2af59908263d6dc8cf2488045198b3c237a5d4ad646c31442442a0abee560d5c3a152a6a8212cfe1881a1f0d3cad949@fullnode-selic-2:30306"

besu --data-path="$BESU_IDENTITY/data" --genesis-file="$BESU_IDENTITY/genesis.json" --bootnodes="$BOOTNODE_1,$BOOTNODE_2,$BOOTNODE_3,$BOOTNODE_4" --p2p-port="$P2P_PORT" --rpc-http-enabled --rpc-http-api=ETH,NET,QBFT --host-allowlist="*" --rpc-http-cors-origins="all" --rpc-http-port="$RPC_HTTP_PORT"