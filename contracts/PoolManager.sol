// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./interfaces/IPoolManager.sol";
import "./interfaces/IChallengePool.sol";

contract PoolManager is IPoolManager {
    address public immutable challengePool;

    constructor(address _challengePool) {
        challengePool = _challengePool;
    }

    function checkUpkeep(bytes calldata /* checkData */) external view override returns (bool upkeepNeeded, bytes memory performData) {
        uint[] memory maturedPools = IChallengePool(challengePool)
            .getMaturePools();
        performData = abi.encodePacked(maturedPools);
        upkeepNeeded = maturedPools.length > 0;
    }

    function performUpkeep(bytes calldata performData) external override {
        (uint[] memory maturedPools) = abi.decode(performData, (uint[]));
        IChallengePool(challengePool).batchCloseChallenge(maturedPools);
    }
}
