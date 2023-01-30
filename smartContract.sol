// SPDX-License-Identifier: MIT
pragma solidity >0.5.0<=0.9.0;

contract simpleStorage{
  uint public num=19;
   function setter(uint _num) public{
       num=_num;
   }
   function getter() public view returns(uint){
    return num;
}
}
