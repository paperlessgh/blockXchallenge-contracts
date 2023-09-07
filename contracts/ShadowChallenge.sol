// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract ShadowChallenge {
    event JoinChallenge(
        uint indexed challengeId,
        address participant,
        uint stake,
        uint maturity
    );
    event CloseChallenge(
        uint indexed challengeId,
        uint time,
        address[] loosers,
        address[] winners
    );

    constructor() {}

    function joinChallenge(
        uint challengeId,
        address participant,
        uint stake,
        uint maturity
    ) public {
        emit JoinChallenge(challengeId, participant, stake, maturity);
    }

    function createChallenge(
        uint challengeId,
        address participant,
        uint stake,
        uint maturity
    ) public {
        emit JoinChallenge(challengeId, participant, stake, maturity);
    }

    function closeChallenge(
        uint challengeId,
        uint time,
        address[] memory loosers,
        address[] memory winners
    ) public {
        emit CloseChallenge(challengeId, time, loosers, winners);
    }
}
