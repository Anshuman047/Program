// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract basic {
    uint public a= 30;
    uint public b=23;
    address[]  public ok;
    
    function loop() public{
        for(a=0;a<5;a++){//same a variable which is also iteration of for loop and value alters from here of a.
            b+=1;
        }
    }
    }
    

    contract basic02{
    uint public a= 30;
    uint public b=23;
    
    function loop() public{
        for(uint s=0;s<5;s++){//here another var comes as per for loop rule for iteration.
            b+=1;
        }
    }
    }