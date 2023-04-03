pragma solidity 0.8.19;
// SPDX-License-Identifier: UNLICENSED
  interface Isolution2 {
  function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
}


contract Level_2_Solution is Isolution2 {
//taken from openzeppelin array and silgtly adapted



  
    function solution(uint256[10] calldata unsortedArray) external override pure returns (uint256[10] memory sortedArray){

        //Bubble sort
        unchecked{
            
            sortedArray=unsortedArray;
//          for (uint256 i = 0; i < 9; ++i)
            {
//                for ( uint256 j = 0; j <(9-i); ++j ) //optimised gas for deployment

                    if  (sortedArray[0] > sortedArray[1]) (sortedArray[0], sortedArray[1])=  (sortedArray[1], sortedArray[0]);
                    if  (sortedArray[1] > sortedArray[2]) (sortedArray[1], sortedArray[2])=  (sortedArray[2], sortedArray[1]);
                    if  (sortedArray[2] > sortedArray[3]) (sortedArray[2], sortedArray[3])=  (sortedArray[3], sortedArray[2]);
                    if  (sortedArray[3] > sortedArray[4]) (sortedArray[3], sortedArray[4])=  (sortedArray[4], sortedArray[3]);
                    if  (sortedArray[4] > sortedArray[5]) (sortedArray[4], sortedArray[5])=  (sortedArray[5], sortedArray[4]);
                    if  (sortedArray[5] > sortedArray[6]) (sortedArray[5], sortedArray[6])=  (sortedArray[6], sortedArray[5]);
                    if  (sortedArray[6] > sortedArray[7]) (sortedArray[6], sortedArray[7])=  (sortedArray[7], sortedArray[6]);
                    if  (sortedArray[7] > sortedArray[8]) (sortedArray[7], sortedArray[8])=  (sortedArray[8], sortedArray[7]);
                    if  (sortedArray[8] > sortedArray[9]) (sortedArray[8], sortedArray[9])=  (sortedArray[9], sortedArray[8]);

                    if  (sortedArray[0] > sortedArray[1]) (sortedArray[0], sortedArray[1])=  (sortedArray[1], sortedArray[0]);
                    if  (sortedArray[1] > sortedArray[2]) (sortedArray[1], sortedArray[2])=  (sortedArray[2], sortedArray[1]);
                    if  (sortedArray[2] > sortedArray[3]) (sortedArray[2], sortedArray[3])=  (sortedArray[3], sortedArray[2]);
                    if  (sortedArray[3] > sortedArray[4]) (sortedArray[3], sortedArray[4])=  (sortedArray[4], sortedArray[3]);
                    if  (sortedArray[4] > sortedArray[5]) (sortedArray[4], sortedArray[5])=  (sortedArray[5], sortedArray[4]);
                    if  (sortedArray[5] > sortedArray[6]) (sortedArray[5], sortedArray[6])=  (sortedArray[6], sortedArray[5]);
                    if  (sortedArray[6] > sortedArray[7]) (sortedArray[6], sortedArray[7])=  (sortedArray[7], sortedArray[6]);
                    if  (sortedArray[7] > sortedArray[8]) (sortedArray[7], sortedArray[8])=  (sortedArray[8], sortedArray[7]);

                    if  (sortedArray[0] > sortedArray[1]) (sortedArray[0], sortedArray[1])=  (sortedArray[1], sortedArray[0]);
                    if  (sortedArray[1] > sortedArray[2]) (sortedArray[1], sortedArray[2])=  (sortedArray[2], sortedArray[1]);
                    if  (sortedArray[2] > sortedArray[3]) (sortedArray[2], sortedArray[3])=  (sortedArray[3], sortedArray[2]);
                    if  (sortedArray[3] > sortedArray[4]) (sortedArray[3], sortedArray[4])=  (sortedArray[4], sortedArray[3]);
                    if  (sortedArray[4] > sortedArray[5]) (sortedArray[4], sortedArray[5])=  (sortedArray[5], sortedArray[4]);
                    if  (sortedArray[5] > sortedArray[6]) (sortedArray[5], sortedArray[6])=  (sortedArray[6], sortedArray[5]);
                    if  (sortedArray[6] > sortedArray[7]) (sortedArray[6], sortedArray[7])=  (sortedArray[7], sortedArray[6]);


                    if  (sortedArray[0] > sortedArray[1]) (sortedArray[0], sortedArray[1])=  (sortedArray[1], sortedArray[0]);
                    if  (sortedArray[1] > sortedArray[2]) (sortedArray[1], sortedArray[2])=  (sortedArray[2], sortedArray[1]);
                    if  (sortedArray[2] > sortedArray[3]) (sortedArray[2], sortedArray[3])=  (sortedArray[3], sortedArray[2]);
                    if  (sortedArray[3] > sortedArray[4]) (sortedArray[3], sortedArray[4])=  (sortedArray[4], sortedArray[3]);
                    if  (sortedArray[4] > sortedArray[5]) (sortedArray[4], sortedArray[5])=  (sortedArray[5], sortedArray[4]);
                    if  (sortedArray[5] > sortedArray[6]) (sortedArray[5], sortedArray[6])=  (sortedArray[6], sortedArray[5]);

                    if  (sortedArray[0] > sortedArray[1]) (sortedArray[0], sortedArray[1])=  (sortedArray[1], sortedArray[0]);
                    if  (sortedArray[1] > sortedArray[2]) (sortedArray[1], sortedArray[2])=  (sortedArray[2], sortedArray[1]);
                    if  (sortedArray[2] > sortedArray[3]) (sortedArray[2], sortedArray[3])=  (sortedArray[3], sortedArray[2]);
                    if  (sortedArray[3] > sortedArray[4]) (sortedArray[3], sortedArray[4])=  (sortedArray[4], sortedArray[3]);
                    if  (sortedArray[4] > sortedArray[5]) (sortedArray[4], sortedArray[5])=  (sortedArray[5], sortedArray[4]);


                    if  (sortedArray[0] > sortedArray[1]) (sortedArray[0], sortedArray[1])=  (sortedArray[1], sortedArray[0]);
                    if  (sortedArray[1] > sortedArray[2]) (sortedArray[1], sortedArray[2])=  (sortedArray[2], sortedArray[1]);
                    if  (sortedArray[2] > sortedArray[3]) (sortedArray[2], sortedArray[3])=  (sortedArray[3], sortedArray[2]);
                    if  (sortedArray[3] > sortedArray[4]) (sortedArray[3], sortedArray[4])=  (sortedArray[4], sortedArray[3]);

                    if  (sortedArray[0] > sortedArray[1]) (sortedArray[0], sortedArray[1])=  (sortedArray[1], sortedArray[0]);
                    if  (sortedArray[1] > sortedArray[2]) (sortedArray[1], sortedArray[2])=  (sortedArray[2], sortedArray[1]);
                    if  (sortedArray[2] > sortedArray[3]) (sortedArray[2], sortedArray[3])=  (sortedArray[3], sortedArray[2]);

                    if  (sortedArray[0] > sortedArray[1]) (sortedArray[0], sortedArray[1])=  (sortedArray[1], sortedArray[0]);
                    if  (sortedArray[1] > sortedArray[2]) (sortedArray[1], sortedArray[2])=  (sortedArray[2], sortedArray[1]);

                    if  (sortedArray[0] > sortedArray[1]) (sortedArray[0], sortedArray[1])=  (sortedArray[1], sortedArray[0]);


            }        
            
        }
    }

}