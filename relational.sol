// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

//Releational operater gives relut true and false where the function uses returns in boolean data type

contract basic {
    uint public val= 30;
   
   function get() public view returns(bool){
       return val==3; //here it would check whether val is =rhs or not and returns reusult in boolean form(true/false)
   }

  function get2() public view returns(bool){
       return val!=3; //here it would check whether val is not=rhs or not and returns reusult in boolean form(true/false)
   }

  function get3() public view returns(bool){
       return val<=3;// similarly for <
   }

   function get4() public view returns(bool){
       return val>=3;//similarly for >
   }

}