// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

contract Array {
    address[] hashs;

    function inserirHash(address _hash) external {
        hashs.push(_hash);
    }

    function obterHash(uint _indice) external view returns(address) {
        return hashs[_indice];
    }

    function atualizarHash(uint _indice, address _novoHash) external {
        hashs[_indice] = _novoHash;
    }

    function deletarHash(uint _indice) external {
        delete hashs[_indice];
    }

}