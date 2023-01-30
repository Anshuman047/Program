// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract basic {
    uint public a= 30;
    uint public b=23;
    
    function loop() public{
        do{
            b+=1;
        }while(a>b);
    }

}