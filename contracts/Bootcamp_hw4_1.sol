
// SPDX-License-Identifier: None

pragma solidity 0.8.17;

contract BootcampContract_hw4_1 {

    uint256 number;
    address owner;
    address constant private  const_ret_address=0x000000000000000000000000000000000000dEaD;

    constructor() {
        require(msg.sender != address(0), "invalid address");
        owner = msg.sender;
    }

    function store(uint256 num) public {
        number = num;
    }

    function retrieve() public view returns (uint256){
        return number;
    }

    function returnAddress() public view returns (address){
        if (msg.sender == owner) {
            return const_ret_address;
        }
        return owner;
    }
    function returnAddress2() public view returns (address) {
        require(msg.sender == owner, "Caller is not owner");
        return const_ret_address;
       
    }
}