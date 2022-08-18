// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

library arithmatic {
    function add(uint _a, uint _b)public pure returns (uint) {
        return _a + _b;
    }
}

contract SampleLibrary {
    uint public sum;

    function addSum(uint _a, uint _b)public {
        sum = arithmatic.add(_a, _b);
    }
}