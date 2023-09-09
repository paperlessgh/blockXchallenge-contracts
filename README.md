## Initial Deployment & Setup Steps

1. Deploy TopicRegistry to get `REGISTRY_CONTRACT`

2. Deploy ChallengePool to get `POOL_CONTRACT`

3. Deploy PoolManger to get `POOL_MANAGER_CONTRACT`

4. Deploy Evaluators
  - SymbolFeed to get `SYMBOL_FEED_CONTRACT`
  - AssetPrice to get `ASSET_PRICE_EVALUATOR`
  - AssetPriceLastValue to get `ASSET_PRICE_LAST_VALUE_EVALUATOR`

5. Create Default Topics


### Deployments

#### Topic Registry
1. Optimistic Goerli
```json
{
  "_type": "TransactionReceipt",
  "accessList": [],
  "blockNumber": 14378607,
  "blockHash": "0xd0aef355d104e85dc63fe557e6b09081d97a9ef3790f3e28310873da4cab23d0",
  "chainId": "420",
  "data": "0xbD3c5059280BEd54DfE2c50971a912333ff5003C",
  "from": "0xC001c172d6534C9bA10bA20bd2e388F8e2943c67",
  "gasLimit": "587062",
  "gasPrice": "1100000001",
  "hash": "0xa80e425de30620a1f42f4656cdbcc777ce011320baec9bf6bc85fcb610db86df",
  "maxFeePerGas": "1100000013",
  "maxPriorityFeePerGas": "1099999950",
  "nonce": 1,
  "signature": {
    "_type": "signature",
    "networkV": null,
    "r": "0x0e6e7368e6675049ef4b75e00eae809b28be3d041fecb9329bb008969f9b3a9d",
    "s": "0x363254a9b2c24b47edce7fbb545bf0d11c1fea102f42453d1d4588bfac1e7c1e",
    "v": 27
  },
  "to": null,
  "type": 2,
  "value": "0"
}
```

#### Challenge Pool
1. Optimistic Goerli
```json
{
  "_type": "TransactionReceipt",
  "accessList": [],
  "blockNumber": 14379077,
  "blockHash": "0xe87b140736ec0aefc256f0dfe7572acdfe6172105131a60f32cfb377b3dea203",
  "chainId": "420",
  "data": "0x5f4efaAE950d4C487B986987E32fDD34f9B732Fb",
  "from": "0xC001c172d6534C9bA10bA20bd2e388F8e2943c67",
  "gasLimit": "2405274",
  "gasPrice": "100000051",
  "hash": "0x8e63f989d1072217e94e774a19a8e18eb0d6e04c18e8719655fb085575728fb4",
  "maxFeePerGas": "100000064",
  "maxPriorityFeePerGas": "100000000",
  "nonce": 2,
  "signature": {
    "_type": "signature",
    "networkV": null,
    "r": "0x6b78c07848c1e68b99e85c39581a74cf15bda94e31494994d90f7628ec9cf8d9",
    "s": "0x08e581587ad2af62524115967dd08879efd13ed8e48ceb81e23021f7bc9ce49c",
    "v": 28
  },
  "to": null,
  "type": 2,
  "value": "0"
}
```

#### Pool Manager
1. Optimistic Goerli
```json
{
  "_type": "TransactionReceipt",
  "accessList": [],
  "blockNumber": 14385369,
  "blockHash": "0x6ebab84c8455aca8a79417d937ef689100440567fef0adbf1b21d0d902be1a52",
  "chainId": "420",
  "data": "0xB5313e76dc773A762BbcB66f41b1F1436dfD5f29",
  "from": "0xC001c172d6534C9bA10bA20bd2e388F8e2943c67",
  "gasLimit": "294771",
  "gasPrice": "100000050",
  "hash": "0xc0fd565dbba8effdfc7ee4eadcf502f2f92934383f23cfd2c930c34e026eca6c",
  "maxFeePerGas": "100000063",
  "maxPriorityFeePerGas": "100000000",
  "nonce": 3,
  "signature": {
    "_type": "signature",
    "networkV": null,
    "r": "0xe1f8e5c20b4bf5f326f12a26638cc5f8c3eef0ade4b2010c97a03a4c67107bac",
    "s": "0x12a80998d11845f5ab6f97c2735f44fce3221fe5895114f85266839d5161605c",
    "v": 28
  },
  "to": null,
  "type": 2,
  "value": "0"
}
```

#### Symbol Feed USD
1. Optimistic Goerli
```json
{
  "_type": "TransactionReceipt",
  "accessList": [],
  "blockNumber": 14392222,
  "blockHash": "0xd02ba8eb5f2a1664aa67842e2e26a6e78025ee60756587006ca70ea2b30d44bd",
  "chainId": "420",
  "data": "0xD6f63ED5b7c90A429DbC090FC2960e60B7f9f0a2",
  "from": "0xC001c172d6534C9bA10bA20bd2e388F8e2943c67",
  "gasLimit": "618860",
  "gasPrice": "100000050",
  "hash": "0x93b6bf0836a3a73d6d0c347224f6622b728db890cb1c85404d296992faea8473",
  "maxFeePerGas": "100000063",
  "maxPriorityFeePerGas": "100000000",
  "nonce": 6,
  "signature": {
    "_type": "signature",
    "networkV": null,
    "r": "0x71c114efa9c175dc736288f1e482b32d7c4444bddc6903c41713c27f372ac2aa",
    "s": "0x3fcc9479a5eea836d6b614d8a0dde66a90ee8c990691a4091d3bfc8278c46a6e",
    "v": 28
  },
  "to": null,
  "type": 2,
  "value": "0"
}
```


#### Asset Price
1. Optimistic Goerli
```json
{
  "_type": "TransactionReceipt",
  "accessList": [],
  "blockNumber": 14394953,
  "blockHash": "0x6a74c8b875df0689b2ae208045a0a2eaa617f607497353f8b7dd8d5c403a2368",
  "chainId": "420",
  "data": "0x6533055bB04062f54A0c70aB794ce1B588216a92",
  "from": "0xC001c172d6534C9bA10bA20bd2e388F8e2943c67",
  "gasLimit": "556720",
  "gasPrice": "1100000001",
  "hash": "0x03717e4e98a9a80cfba4a2a0d2ed03003868695f081bb4e76b042522222a79c2",
  "maxFeePerGas": "1100000014",
  "maxPriorityFeePerGas": "1099999950",
  "nonce": 8,
  "signature": {
    "_type": "signature",
    "networkV": null,
    "r": "0x31efcf56cee39c140e78a3a7c6dbe8daa29179616e8b4d0ffc6b0b4561ea0f77",
    "s": "0x3ac703b3f9a8ec685aa352e9adeba7df47fbd9a5cff10a42e8b9636b446bf3a1",
    "v": 27
  },
  "to": null,
  "type": 2,
  "value": "0"
}
```
