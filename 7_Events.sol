// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract SampleEvent {
    event Log(address sender, string message, uint256 timestamp);

    function emitEvent() public {
        emit Log(msg.sender, "Hello World!", block.timestamp);
        emit Log(msg.sender, "Hello The Meetup 110!", block.timestamp);
    }
}