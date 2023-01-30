// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

import"./Basic.sol";//here that library has been imported from file where it is present and used as usual

contract practise02{
function sum(uint a, uint b) public pure returns(uint){
    return Addition.add(a,b);//hre libabry has been used here
}


}
