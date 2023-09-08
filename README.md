## Initial Deployment & Setup Steps

1. Deploy TopicRegistry to get `REGISTRY_CONTRACT`

2. Deploy ChallengePool to get `POOL_CONTRACT`

3. Deploy PoolManger

4. Deploy Evaluators

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