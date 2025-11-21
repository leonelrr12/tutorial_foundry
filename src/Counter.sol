// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 private contador;

    function setNumber(uint256 newNumber) public {
        contador = newNumber;
    }

    function getNumber() public view returns (uint256) {
        return contador;
    }

    function increment() public {
        contador++;
    }

    function decrement() public {
        contador--;
    }

    function substract(uint256 pNumber) public {
        contador = contador - pNumber;
    }
}
