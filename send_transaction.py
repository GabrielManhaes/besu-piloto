from web3 import Web3
from web3.middleware import geth_poa_middleware # only needed for PoA networks like BSC

w3 = Web3(Web3.WebsocketProvider("ws://0.0.0.0:8546"))
w3.middleware_onion.inject(geth_poa_middleware, layer=0) # only needed for PoA networks like BSC

pk_account_1 = "8f2a55949038a9610f50fb23b5883af3b4ecb3c3bb792cbcefbd1542c692be63"
account_1 = "0xFE3B557E8Fb62b89F4916B721be55cEb828dBd73"
account_2 = "0x627306090abaB3A6e1400e9345bC60c78a8BEf57"

nonce = w3.eth.get_transaction_count(account_1)

tx = {
    'nonce': nonce,
    'to': account_2,
    'value': 1,
    'gas': 21000,
    'gasPrice': 10000
}

#sign the transaction
signed_tx = w3.eth.account.sign_transaction(tx, pk_account_1)

#send transaction
tx_hash = w3.eth.send_raw_transaction(signed_tx.rawTransaction)

#get transaction hash
print(w3.to_hex(tx_hash))