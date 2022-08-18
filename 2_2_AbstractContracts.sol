// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

abstract contract SampleAge {
    uint256 public age;

    function getAge() public virtual view returns (uint256){
        return age;
    }
    function setAge(uint256 _age) public virtual {}
}

contract SampleName is SampleAge {
    string public name;

    function setName(string memory _name) public {
        name = _name;
    }
    function getName() public view returns (string memory){
        return name;
    }
    function getAge() public override virtual view returns (uint256) {
        return 67;
    }
    function setAge(uint256 _age) public override virtual {
        age = _age;
    }
}