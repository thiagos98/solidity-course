// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Mappings {
    mapping(address => uint) internal userLevel;

    function getCurrentLevel(address userAddress) public view returns(uint) {
        return userLevel[userAddress];
    }

    function addAddress(address userAddress, uint _userLevel) public {
        userLevel[userAddress] = _userLevel;
    }
}