
// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

contract Rudra_burn_mint {

    // declaring the state variables
    // these are linked with the smart contract
    string public tokenName = "Gol Gappa ";
    string public tokenAbbr = "GG";
    uint public totalSupply = 1258;

    // balance mapping
    mapping(address => uint) public balances;

    function mint(address addr, uint amount) external {
        balances[addr] += amount;
        totalSupply += amount;
    }

    function burn(address addr, uint amount) external {
        if(balances[addr]>=amount && totalSupply > amount){
            balances[addr] -= amount;
            totalSupply -= amount;
        }
    }
}
