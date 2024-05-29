# ETH_Beginner_proof
This Solidity smart contract implements a basic token called "Gol Gappa" (GG). The contract allows for token minting and burning, while keeping track of token balances for different addresses.

this keeps the track of how token is created
```
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
```

following is the mint function

```
 function mint(address addr, uint amount) external {
        balances[addr] += amount;
        totalSupply += amount;
    }
```

this is the burn function

```
    
function burn(address addr, uint amount) external {
        if(balances[addr]>=amount && totalSupply > amount){
            balances[addr] -= amount;
            totalSupply -= amount;
        }
    }
}
```
### Usage

mint(address _address, uint _supply):
  
  This function mints new tokens by increasing the total supply and the balance of the specified address. The _address parameter denotes the recipient's address, and _supply represents the amount of tokens to be minted.

burn(address _address, uint _supply):
  
  Use this function to burn tokens. The _address parameter identifies the sender's address, and _supply specifies the amount of tokens to be burned. The function deducts the tokens from the total supply and the balance of the sender's address. If the sender's balance is insufficient, an error message is returned.
