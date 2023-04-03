pragma solidity 0.8.17;
// SPDX-License-Identifier: UNLICENSED
interface Isolution4 {
    function solution(uint256 value) external;
}

contract Level_4_Solution is Isolution4 {
     uint256[4] private strg;

    function solution(uint256 value) external override{

        strg[3]=value;
    }
}