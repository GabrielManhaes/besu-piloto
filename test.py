from web3 import Web3
w3 = Web3(Web3.HTTPProvider('http://172.21.0.6:8545'))

print(w3.is_connected())

print(w3.eth.get_block('latest'))