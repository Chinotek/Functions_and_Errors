# Functions_and_Errors Jollibee Edition

A Solidity smart contract that simulates buying a chickenjoy in Jollibee.

## Description

The Jollibee contract simulates buying a chickenjoy in Jollibee where the establishment doesn't have any change for more than 200 pesos:

## Getting Started

### Prerequisites

- Solidity ^0.8.17
- Remix IDE or any Ethereum development environment
- MetaMask or similar Ethereum wallet

### Executing Program

1. **Deploy the Contract**:
   - Deploy using Remix IDE to your chosen network
   - Default Balance: 500
   - If `chickenjoy` argument is greater than `balance`, `revert`
   - `assert` if `payment <= 200`
   - `require` input to be `more than or equal to 150`

```solidity
contract Jollibee {
    uint public balance = 250;
    uint public constant chickenjoy = 150;
    
    function payFood(uint payment) public payable {
        if (chickenjoy > balance) {
            revert("you don't have enough money to buy a chickenjoy");
        }
        assert(payment <= 200);
        require(payment >= 150, "The cost of a chickenjoy is 150");
        balance -= payment;
    }
}
```

## License

This project is licensed under the MIT License
