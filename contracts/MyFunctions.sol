// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyFunctions {
    address internal owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function getResult() internal pure returns (uint) {
        uint a = 1; // variavel local
        uint b = 10;
        uint result = a + b;
        return result;
    }

    function getResult2(uint _x, uint _y) internal pure returns(uint) {
        return _x + _y;
    }
    
    function testFunction1() public pure returns (uint) {
        return getResult();
    }

    // parametro fica visivel no deploy para inserir valores
    function testFunction2(uint valor) public view onlyOwner returns (uint) {
        // modificador de função: simbolo coringa mescla o codigo da função com codigo modificador
        // exemplo: onlyOwner
        // require(msg.render == owner);
        return getResult2(2, valor);
    }
}