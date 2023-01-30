// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract basic {
    uint public a= 30;
    uint public b=23;
  function loop() public  {
      while(a>b){
          b+=1;
      }//loop will run till a=b=30
  }
}