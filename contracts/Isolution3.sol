pragma solidity 0.8.17;
// SPDX-License-Identifier: UNLICENSED
interface Isolution3 {
    function solution(address addr) external view  returns (uint256 codeSize);
}
    


contract Level_3_Solution is Isolution3 {
//taken from openzeppelin array and silgtly adapted



     function solution(address addr)  external override view  returns (uint256 codeSize){

        assembly {
            codeSize := extcodesize(addr)
        }

    }
}