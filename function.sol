// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract functions{
   //code
  uint public vari=4;

   function add() public pure returns(uint){
       return 2+3;
   }

   function add2() public view returns(uint){
       vari+5;
       return vari;
   }

    function add3() public  returns(uint){
       vari=24;
       return vari;
   }
}