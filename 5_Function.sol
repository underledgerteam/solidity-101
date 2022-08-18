// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "hardhat/console.sol";

contract SampleFunction{
    uint public number = 0;

    receive()external payable{
        console.log("receive()is called.");
    }
    fallback()external payable{
        console.log("fallback()is called.");
    }

    constructor(uint _number){
       number = _number;
    }

    modifier validateInput(uint _number) {
        console.log("Before Call Function");
        require(_number <= 100, "Num Overflow 100");
        _;
        console.log("After Call Function");
    }

    function getBalance()public view returns(uint){
        return address(this).balance;
    }
    function getMyBalance(address payable _address)public view returns(uint){
        return _address.balance;
    }
    function viewFunction(uint _number)public view returns(uint){
        // number = _number;
        return number;
    }
    function pureFunction(uint _number)public pure returns(uint){
        // number = _number;
        // uint readNumber = number;
        return _number;
    }
    function setNumberModifierFunction(uint _number)public validateInput(_number) {
        console.log("After Call Modifier");
        number = _number;
    }
    function sendViaTransfer(address payable _to)public payable{
        // This function is no longer recommended for sending Ether.
        _to.transfer(msg.value);
    } 
    function sendViaSend(address payable _to)public payable{
        // Send returnsaboolean value indicating success or failure.
        // This function is not recommended for sending Ether.
        bool sent = _to.send(msg.value);
        require(sent, "Send Failed to send Ether");
    }
    function sendViaCall(address payable _to)public payable{
        // Call returnsaboolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value:msg.value}("");
        require(sent, "Call Failed to send Ether");
    }
    function sendViaCallData(address payable _to)public payable{
        // Call returnsaboolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value:msg.value}("myData");
        require(sent, "Call Failed to send Ether");
    }
}