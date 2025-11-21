// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;
    uint256 testNumber;

    function setUp() public {
        counter = new Counter();
        testNumber = 42;
    }

    function test_Number42() public {
        assertEq(testNumber, 42);
    }

    function test_RevertWhen_Substract43() public {
        vm.expectRevert(); // opcional: puedes poner un mensaje
        // vm.expectRevert("Underflow");       // mensaje exacto si quieres
        counter.substract(43);
    }

    function test_GetCounter() public {
        uint256 contadorValue = counter.getNumber();
        assertEq(contadorValue, 0);
    }

    function test_Incremente() public {
        counter.increment();
        uint256 contadorValue = counter.getNumber();
        assertEq(contadorValue, 1);
    }
}
