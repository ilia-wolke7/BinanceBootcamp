
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/structs/EnumerableMap.sol";
contract DogCoin { //hw4_2
//types
    struct Payment{
        address sender;
        address receiver;
        uint256 amount;
    }
//variables

    uint256  total_supply;
    address    owner;
    event score_increased(uint256);
    EnumerableMap.AddressToUintMap private  balances;
    Payment[] payments;
    mapping(address => Payment[])  payments_for_address;

//events
    event TransferAttemptEvent (address who,uint256 how_much ,uint256 curr_balance_sender,uint256 curr_balance_receiver);
    event TransferFinishedEvent(address who,uint256 how_much ,uint256 curr_balance_sender,uint256 curr_balance_receiver);

//modifiers
    modifier onlyOwner {
        if (msg.sender == owner) {
        _;
        }
    }

    constructor() {        
        require(msg.sender != address(0), "invalid address");
        owner =msg.sender;
        total_supply=2000000;
        EnumerableMap.set(balances,owner,total_supply);        
    }

//total_supply functions
    function increase_supply_by_100() public onlyOwner {
        total_supply += 1000;
        emit score_increased(total_supply);
    }
    
    function retrieve_total_supply() public view returns (uint256){
        return total_supply;
    }
//balance functions
    function get_balance() public view returns (uint256){
        return get_balance(msg.sender);
    }
    function get_balance( address _address) public view returns (uint256){
        if (EnumerableMap.contains( balances,_address)) {
            return EnumerableMap.get(balances,_address);
        }
        else{
            return 0;
        }
    }

    function dec_balance(uint _amount) private {
        if (EnumerableMap.contains( balances,msg.sender)) {
            uint256 current_balance=EnumerableMap.get(balances,msg.sender);
            require (current_balance>=_amount, "not enougth coins on the balance");
            EnumerableMap.set(balances,msg.sender,current_balance-_amount );
        }
        else{
            require (false, "unknown sender, no balance at all");
        }
    }
//transfer
    function transfer(address _to, uint _amount) public {
            uint256 the_balance=get_balance();
            address sender=msg.sender;
            emit  TransferAttemptEvent(_to,_amount ,the_balance, get_balance(_to));   
                     
        if ((the_balance>0)&&(_amount<=the_balance)&&(sender!=_to)){                        
            payments.push(Payment(sender,_to,_amount)); //

            if (!EnumerableMap.contains(balances,_to) ){ //new receiver                
                EnumerableMap.set(balances,_to,_amount); //set new balance to _amount
                
            }else{ //existing receiver
                uint256 curr_balance=EnumerableMap.get(balances,_to); 
                EnumerableMap.set(balances,_to,curr_balance+_amount); //add amount to current balance
            }            
            dec_balance(_amount); //decriment senders balance
            payments_for_address[msg.sender]=payments;
        }
          emit  TransferFinishedEvent(_to,_amount ,the_balance, get_balance(_to));   
    }

    function get_number_of_payments() public view returns (uint256){
        return payments.length;
    }




/*

    function returnAddress() public view returns (address){
        if (msg.sender == owner) {
            return 0x000000000000000000000000000000000000dEaD;
        }
        return owner;
    }
    function returnAddress2() public view returns (address) {
        require(msg.sender == owner, "Caller is not owner");
        return address(0x000000000000000000000000000000000000dEaD);
       
    }
    */
}