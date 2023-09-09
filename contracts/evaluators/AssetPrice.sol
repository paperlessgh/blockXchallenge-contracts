// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "../interfaces/IEvaluator.sol";
import "../SymbolFeedUSD.sol";

contract AssetPrice is IEvaluator {
    address public immutable symbolFeed;

    constructor(address _symbolFeed) {
        symbolFeed = _symbolFeed;
    }

    function evaluateChallenge(
        IChallengePool.Challenge calldata challenge
    )
        external
        view
        returns (
            bytes memory results,
            address[] memory losers,
            address[] memory winners
        )
    {
        string memory symbol = abi.decode(challenge.params, (string));
        int price = SymbolFeedUSD(symbolFeed).getUSDPrice(symbol);
        uint winnerCount = 0;
        uint looserCount = 0;
        for (uint256 i = 0; i < challenge.participants.length; i++) {
            int participantProposal = abi.decode(
                challenge.participants[i].proposal,
                (int)
            );
            if (participantProposal != price) {
                looserCount++;
            } else {
                winnerCount++;
            }
        }
        losers = new address[](looserCount);
        winners = new address[](winnerCount);
        uint w = 0;
        uint l = 0;
        for (uint256 i = 0; i < challenge.participants.length; i++) {
            int participantProposal = abi.decode(
                challenge.participants[i].proposal,
                (int)
            );
            if (participantProposal != price) {
                losers[l++] = challenge.participants[i].participant;
            } else {
                winners[w++] = challenge.participants[i].participant;
            }
        }
        results = abi.encodePacked(price);
    }

    function validateChallenge(
        bytes memory params,
        bytes memory proposal
    ) public view returns (bool) {
        string memory symbol = abi.decode(params, (string));
        if (
            SymbolFeedUSD(symbolFeed).symbolAggregators(symbol) == address(0x0)
        ) {
            return false;
        }
        int decodedProposal = abi.decode(proposal, (int));
        return true;
    }

    function resultsType() public pure returns (string[] memory) {
        string[] memory result = new string[](1);
        result[0] = "int";
        return result;
    }

    function paramsType() public pure returns (string[] memory) {
        string[] memory params = new string[](1);
        params[0] = "string";
        return params;
    }
}
