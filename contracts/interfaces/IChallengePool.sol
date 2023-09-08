// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./ITopicRegistry.sol";

interface IChallengePool {
    enum PoolState {
        open,
        closed,
        stale
    }
    struct Participant {
        address participant;
        bytes proposal;
    }
    struct Challenge {
        uint topicId;
        uint stake;
        uint createdAt;
        uint maturity;
        PoolState state;
        Participant[] participants;
        address[] winners;
        address[] losers;
        bytes results;
        bytes params;
    }
    event PoolChallenge(uint indexed challengeId);

    function setFeeAddress(address _feeAddress) external;

    function setMinMaturity(uint8 _minMaturity) external;

    function setJoiningThreshold(uint8 _joiningThreshold) external;

    function setFeePercent(uint8 _feePercent) external;

    function createChallenge(
        uint topicId,
        uint maturity,
        bytes memory params,
        bytes memory proposal
    ) external payable returns (uint);

    function joinChallenge(
        uint challengeId,
        bytes memory proposal
    ) external payable;

    function batchCloseChallenge(uint[] memory challengeIds) external;

    function getTopicChallenge(
        uint challengeId
    )
        external
        view
        returns (ITopicRegistry.Topic memory topic, Challenge memory challenge);

    function getTopic(
        uint challengeId
    ) external view returns (ITopicRegistry.Topic memory);

    function getChallenge(
        uint challengeId
    ) external view returns (Challenge memory);

    function getOpenPools() external view returns (uint[] memory);

    function getMaturePools()
        external
        view
        returns (uint[] memory maturedPools);
    
    function stakeFee(uint value) external view returns (uint stake, uint fee);
}
