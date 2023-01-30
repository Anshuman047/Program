// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;
//polymorphisim also known as overloading

contract addition{
    //here two same function are there but getting different argumants , in which compiler treats them different rom thi s:polymorphisim
   function add(uint a,uint b,uint c) public pure returns(uint){
       return a+b+c;
   }
   function add(uint a,uint b) public pure returns(uint){
       return a+b;
   }

 }