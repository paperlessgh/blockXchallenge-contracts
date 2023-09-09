# Challenge Pools

A wierd diagram of how the smart contract is all linked together.

![Architecture](https://github.com/paperlessgh/blockXchallenge/blob/main/images/blockxchallenge-contracts.png)

## Initial Deployment & Setup Steps

1. Deploy TopicRegistry to get `REGISTRY_CONTRACT`

2. Deploy ChallengePool to get `POOL_CONTRACT`

3. Deploy PoolManger to get `POOL_MANAGER_CONTRACT`

4. Deploy Evaluators
  - SymbolFeed to get `SYMBOL_FEED_CONTRACT`
  - AssetPrice to get `ASSET_PRICE_EVALUATOR`

5. Create Default Topics


### Deployments

#### Topic Registry
https://goerli-optimism.etherscan.io/address/0xbD3c5059280BEd54DfE2c50971a912333ff5003C

#### Challenge Pool
https://goerli-optimism.etherscan.io/address/0xfCc955BEcC20f6AB2E4F2b58A727F19D38BC12e0
#### Pool Manager
https://goerli-optimism.etherscan.io/address/0x883C3040182979D7723e41aafbA95Bea352EB238

#### Symbol Feed USD
https://goerli-optimism.etherscan.io/address/0xD6f63ED5b7c90A429DbC090FC2960e60B7f9f0a2

#### Asset Price
https://goerli-optimism.etherscan.io/address/0xdf2219b830d17d9761f7e84de20341921b10f52e