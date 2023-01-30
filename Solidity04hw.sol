// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract hw{
// uint[5] public arr=[1,2,3,4,5];

function sumArray(uint[] memory arr1) public pure returns (uint){
uint sum;
uint avg;
for(uint x;x<arr1.length;x++){
    sum=arr1[x]+sum;
    
}   
avg=sum/arr1.length;
return sum;
}

function Avg(uint[] memory arr1) public pure returns (uint){
uint sum;
uint avg;
for(uint x;x<arr1.length;x++){
    sum=arr1[x]+sum;
    
}   
avg=sum/arr1.length;
return avg;

}

function larg(uint[] memory arr1)  public pure returns(uint){

}

}

