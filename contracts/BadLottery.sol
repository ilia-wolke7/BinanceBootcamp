// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
//import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BadLotteryGame  {
    uint256   public prizeAmount;         // payout amount
    address payable[] public players;    
    uint256 public num_players;        
    address payable[] public prize_winners; 
    event winnersPaid(uint256, address);

    constructor() {}

    function addNewPlayer(address payable _playerAddress) public payable {
        if (msg.value == 500000) {
            _playerAddress.transfer(500000);
            players.push(_playerAddress);
        }
        
        num_players++;
        if (num_players > 50) {
            emit winnersPaid(prizeAmount,_playerAddress);
        }
    }

    function pickWinner(address payable _winner) public {
        if ( block.timestamp % 15 == 0){    // use timestamp for random number
            prize_winners.push(_winner);
        }          
    }

    function payout() public {
        if (address(this).balance == 500000 * 100) {
            uint256 amountToPay = prize_winners.length / 100; 
            distributePrize(amountToPay);
        }
    }

   function distributePrize2() public payable {  //should be private
        for (uint256 i = 0; i <= prize_winners.length; i++) { //buffer overflow
                 emit winnersPaid( 777,  prize_winners[0]);
                emit winnersPaid(  prize_winners.length,  prize_winners[0] );

        }
               emit winnersPaid( 11 ,prize_winners[0]);
    }
    function distributePrize(uint256 _amount) public {  //should be private
        for (uint256 i = 0; i <= prize_winners.length; i++) { //buffer overflow
            prize_winners[i].transfer(_amount);
        }
    }
}