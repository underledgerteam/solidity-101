// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract SampleTypeVariables {
    /* Access Modifiers
        If Type Scope not Defined, Default Access Modifiers is Private
    */
    int public myPublicInt = 1;
    int private myPrivateInt = 1;
    int internal myInternalInt = 1;

    /* Integer Type
        int is int256 | Range int8 to int256
        uint is uint256 | Range uint8 to uint256
    */
    int myInt = 1; // int are aliases for int256 & Range of -2 ** 255 to 2 ** 255 - 1
    uint myUint = 1; // uint are aliases for uint256 & Range of 0 to 2 ** 256 -1

    // String & Bytes Type
    string myString = "myString";
    bytes myBytes = "myBytes"; // Bytes Range bytes1 to bytes32

    // Boolean Type, true or false
    bool myBool = true;

    // Enum Type Source: https://solidity-by-example.org/enum/
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    Status public myEnum;
    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4

    // Array Type
    uint[] dynamicSizeArray; 
    uint[7] fixedSizeArray;

    // Mapping Type
    mapping(address => uint) myMapping;
    /*
        0xE507...63786 => 1000
        0xd907...9570 => 4000
    */

    // Struct Type
    struct myStruct { 
        address addr; 
        uint amount; 
    }
    
    // Address Type
    address myAddress;
}
