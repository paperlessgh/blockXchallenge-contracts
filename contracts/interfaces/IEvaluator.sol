// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;
import "./IChallengePool.sol";

interface IEvaluator {
    function evaluateChallenge(
        IChallengePool.Challenge calldata challenge
    )
        external
        view
        returns (
            bytes memory results,
            address[] memory losers,
            address[] memory winners
        );

    function validateChallenge(
        bytes memory params,
        bytes memory proposal
    ) external view returns (bool);

    function resultsType() external view returns (string memory);

    function paramsType() external view returns (string memory);
}
