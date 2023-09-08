// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import './ITopicRegistry.sol';

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
        uint maturity;
        PoolState state;
        Participant[] participants;
        address[] winners;
        address[] losers;
        bytes results;
        bytes params;
    }
    event PoolChallenge(uint indexed challengeId);

    function createChallenge(
        uint topicId,
        uint stake,
        uint maturity,
        bytes memory proposal,
        bytes memory params
    ) external;

    function joinChallenge(uint challengeId, bytes memory proposal) external;

    function closeChallenge(uint challengeId) external;

    function batchCloseChallenge(uint[] memory challengeIds) external;

    function getTopicChallenge(uint challengeId) external view returns(ITopicRegistry.Topic memory topic, Challenge memory challenge);

    function getTopic(uint challengeId) external view returns(ITopicRegistry.Topic memory);

    function getChallenge(uint challengeId) external view returns(Challenge memory);
}
