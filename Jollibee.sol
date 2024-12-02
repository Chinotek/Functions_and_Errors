
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

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
