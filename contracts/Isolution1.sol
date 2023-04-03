/**
 *Submitted for verification at BscScan.com on 2023-03-30
*/

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;


interface Isolution1 {
    function solution(
        uint256[2][2] calldata x, 
        uint256[2][2] calldata y
    ) external pure returns (
        uint256[2][2] memory
    );
}

contract Level_1_Solution is Isolution1 {

    function solution(uint256[2][2] calldata x, uint256[2][2] calldata y) external override pure returns (uint256[2][2] memory finalArray) {
    unchecked{


             (
                 finalArray[0][0], finalArray[0][1],finalArray[1][0],  finalArray[1][1]                                  
             )= (x[0][0]+y[0][0],x[0][1]+y[0][1],x[1][0]+y[1][0],x[1][1]+y[1][1]);
    }
        
    
    }
}