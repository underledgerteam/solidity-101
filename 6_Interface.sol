// Source: https://solidity-by-example.org/interface/

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

interface ICounter {
    function count() external view returns (uint);
    function increment() external;
}

contract Counter {
    uint public count;

    function increment() external {
        count += 1;
    }
}

contract MyContract {
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }
    function getCount(address _counter) external view returns (uint) {
        return ICounter(_counter).count();
    }
}