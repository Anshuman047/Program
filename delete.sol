// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract hello{
   
    uint public ok=5;
    int public nice=4;
    string public str="hello world";
    uint[4] public great=[1,2,3,4];
    bool public hmm=true;


    function restore() public {//here delete keyword would reset the variable to its defdault value of data type
        delete ok;
        delete nice;
        delete str;
        delete great;
        delete hmm;

    }

}