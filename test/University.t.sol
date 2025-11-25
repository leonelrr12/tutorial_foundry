// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {University} from "../src/University.sol";

import "forge-std/console.sol"; // Solo se puede colocar en modo debug

contract UniversityTest is Test {
    University public university;
    uint256 private startDate;

    // vm.warp - establece block.timestamp
    // skip - incrementar el tiempo actual en segundos
    // rewind - reducir el tiempo actual

    function setUp() public {
        vm.warp(86400);
        university = new University();
        startDate = block.timestamp;
    }

    function testEnrool_RevertWhen_BeforeStartDate() public {
        vm.expectRevert("Cannot enroll!");
        university.enroll();
    }

    function testEnrool_RevertWhen_AfterEndDate() public {
        vm.expectRevert("Cannot enroll!");
        university.enroll();
    }

    function testEnroll() public {
        vm.warp(startDate + 1 days);
        university.enroll();
    }

    function testLeave() public {
        vm.warp(startDate + 2 days + 1 seconds);
        university.leave();
    }
}
