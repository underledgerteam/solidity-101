// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract SampleErrorHandling {
    uint public number;

    function testAssert(uint _number) public {
        assert(_number<=150);
        number = _number;
    }
    function testRequire(uint _number) public {
        require(_number<=150, "Message: Input Over 150");
        number = _number;
    }
    function testRevert(uint _number) public {
        number = _number;
        if(_number>150){
            revert("Reason: Input Over 150");
        }
    }
}