// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract adminAccessModifier {

    uint public num;
    address public admin = msg.sender;

    modifier adminAccess {
        require( admin == msg.sender);
        _;
    }

    function add (uint _a, uint _b) public adminAccess returns(uint) {
        return num = _a + _b;
    }

    function sub (uint _a, uint _b) public adminAccess returns(uint) {
       return num = _a - _b;
    }


}
