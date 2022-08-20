// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract SampleEvent {
    event HelloMessage(address sender, string message, uint256 timestamp);

    function emitEvent() public {
        emit HelloMessage(msg.sender, "Hello World!", block.timestamp);
        emit HelloMessage(msg.sender, "Hello The Meetup 111!", block.timestamp);
    }
}