// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Events {
    
    event Deposit {
        address user,
        uint etherAmount,
        uint time
    }

    function deposit() public payable {
        
        emit Deposit(msg.sender, msg.value, msg.timestamp   );
    }
}