// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/console.sol"; // Solo se puede colocar en modo debug

contract University {
    uint256 public startDate;
    uint256 public endDate;

    constructor() public {
        startDate = block.timestamp + 1;
        endDate = block.timestamp + 2;
    }

    function enroll() public {
        require(
            block.timestamp >= startDate && block.timestamp < endDate,
            "Cannot enrool!"
        );
    }

    function leave() public {
        require(block.timestamp >= endDate, "Cannot leave!");
    }
}
