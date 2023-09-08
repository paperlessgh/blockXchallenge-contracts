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
            bytes memory result,
            address[] memory losers,
            address[] memory winners
        );

    function validateChallenge(
        IChallengePool.Challenge calldata challenge
    ) external view returns (bool);

    function resultsTemplate() external view returns (string memory);
    function paramsTemplate() external view returns (string memory);
}
