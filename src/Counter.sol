// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

//import "forge-std/console.sol";   // Solo se puede colocar en modo debug

contract Counter {
    uint256 private contador;

    function setNumber(uint256 newNumber) public {
        contador = newNumber;
    }

    function getNumber() public view returns (uint256) {
        return contador;
    }

    function increment() public {
        //console.log("Impriendo siguiente valor: ", "256");  // Solo se puede colocar en modo debug
        contador++;
    }

    function decrement() public {
        contador--;
    }

    function substract(uint256 pNumber) public {
        contador = contador - pNumber;
    }
}
