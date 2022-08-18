// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "./Sample.sol";

// This is a Comment. It is similar to Comments in javascript

/* This is a multi-line Comment 
    import * as symbolName from "filename";
    import "filename" as symbolName;
    import { symbol1 as aliasSymbol1, symbol2 } from "filename";
*/

contract SampleLayout {
    uint public number; // State Variables

    constructor() {
        // Something Code
        number = 5;
    }

    function sampleFunction() public pure returns(uint) {
        // Something Code
        uint _number = 7; // Local Variables
        return (_number);
    }
}
