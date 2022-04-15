// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;

contract Struct {
    struct Pessoa {
        uint idade;
        string nome;
    }

    Pessoa[] listaPessoas;

    function InserirPessoas(uint _idade, string memory _nome) public {
        listaPessoas.push(Pessoa(_idade, _nome));
    }

    function ObterPessoas() public view returns(Pessoa[] memory) {
        return listaPessoas;
    }

    function ObterPessoa(uint _indice) public view returns(uint idade, string memory nome) {
        Pessoa memory p = listaPessoas[_indice];

        return (p.idade, p.nome);
    }
    // finalizar desafio obter pessoa pelo nome
    function ObterPessoaPeloNome(string memory _nome) public view returns (uint idade, string memory nome) {
        uint i = 0;
        for(i = 0; i < listaPessoas.length-1; i++) {
            string memory nomeLista = listaPessoas[i].nome;
            if(keccak256(bytes(_nome)) == keccak256(bytes(nomeLista))) {
                return (listaPessoas[i].idade, listaPessoas[i].nome);
            }
        }
    }

    function AtualizarPessoa(uint _indice, uint _idade, string memory _nome) public {
        Pessoa storage p = listaPessoas[_indice];
        p.idade = _idade;
        p.nome = _nome;
        listaPessoas[_indice] = p;
    }

    function DeletarPessoa(uint _indice) public {
        delete listaPessoas[_indice];
    }

    function TotalDePessoas() public view returns (uint) {
        return listaPessoas.length;
    }
}