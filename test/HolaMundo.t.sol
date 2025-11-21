// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {HolaMundo} from "../src/HolaMundo.sol";

contract HolsMundoTest is Test {
    HolaMundo public holaMundo;

    function setUp() public {
        holaMundo = new HolaMundo();
    }

    function testSaludo() public {
        assertEq(holaMundo.saludo(), "Hola Leonel Rodriguez");
    }
}
