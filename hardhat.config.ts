import { NetworkUserConfig, HardhatUserConfig } from "hardhat/types";
import "@nomicfoundation/hardhat-toolbox";
import "dotenv/config";

const optimism: NetworkUserConfig = {
  url: "https://optimism-mainnet.infura.io/v3/82de4c56f4364dd899635d8ebbc349cc",
  chainId: 10,
  accounts: [process.env.PRIVATE_KEY!],
};

const optimismGoerli: NetworkUserConfig = {
  url: "https://optimism-goerli.infura.io/v3/82de4c56f4364dd899635d8ebbc349cc",
  chainId: 420,
  accounts: [process.env.PRIVATE_KEY!],
};

const config: HardhatUserConfig = {
  solidity: {
    version: "0.8.19",
    settings: {
      optimizer: {
        enabled: true,
        runs: 100,
      },
      viaIR: true,
    },
  },
  networks: {
    optimismGoerli,
    optimism,
  },
  etherscan: {
    apiKey: {
      eth: "DUU2RIG2D7G2NT3FST6HHJNRQSVQFD1XCI",
      optimisticGoerli: "SZZNTRAM27FZW2V3TFBEB3TIYHH9US543A",
    },
  },
};

export default config;
