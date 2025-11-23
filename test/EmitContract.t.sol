// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {ExpectEmit} from "../src/ExpectEmit.sol";

contract ExpectContractTest is Test {
    event Transfer(address indexed from, address indexed to, uint256 amount);

    function test_ExpectEmit() public {
        /*
            function expectEmit(
                bool chechTopic1,
                bool chechTopic2,
                bool chechTopic3,
                bool chechData,
            ) external;
        */

        ExpectEmit emitter = new ExpectEmit();
        vm.expectEmit(true, true, false, true);
        emit Transfer(address(this), address(1337), 1337);
        emitter.t();
    }

    function test_ExpectEmit_DoNotCheckData() public {
        ExpectEmit emitter = new ExpectEmit();
        vm.expectEmit(true, false, false, false);
        emit Transfer(address(this), address(1339), 1338);
        emitter.t();
    }
}
