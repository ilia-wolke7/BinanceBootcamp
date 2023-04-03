/**
 *Submitted for verification at BscScan.com on 2023-03-30
*/

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;


  interface Isolution {
    function solution() external pure returns (uint8);
}


contract Level_0_Solution is Isolution {

	  function solution()  external override   pure returns (uint8){
      unchecked{
        return 42; 
      }
    }
}