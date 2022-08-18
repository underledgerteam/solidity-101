// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract B {
    uint public num;
    address public sender;
    address public origin;
    uint public value;

    function setVars(uint _num) public payable {
        num = _num;
        sender = msg.sender;
        origin = tx.origin;
        value = msg.value;
    }
}

contract A {
    uint public num;
    address public sender;
    address public origin;
    uint public value;

    function callSetVars(address _contract, uint _num) external payable {
        (bool success,) = _contract.call(abi.encodeWithSignature("setVars(uint256)", _num));
    }
    function delegatecallSetVars(address _contract, uint _num) external payable {
        (bool success,) = _contract.delegatecall(abi.encodeWithSignature("setVars(uint256)", _num));
    }
}