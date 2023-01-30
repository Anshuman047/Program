// SPDX-License-Identifier:Unlicensed

//In general language:all programs store in memmory(ram) and erased when they were executed : not releated to storage where data stored permanently dependent as per user

pragma solidity >=0.7.0;

contract varscope{
    uint[3] public arr=[1,2,3];//arr created in storage area

    function Memory() public view  {
        uint[3] memory arr1=arr;
        arr1[2]=10*arr1[2];//arr1 is new array created inside the memory area

    }

    function Storage() public {
        uint[3] storage arr2=arr;//arr2 behaves as poiter to arr whereas no new array created in anywhere
        //storage keyword-is used when you have to alter your state variable when you are present in any function or use  the statevar directly as its scoping is within contract
        arr2[2]=2*arr2[2];

    } 

    
}

