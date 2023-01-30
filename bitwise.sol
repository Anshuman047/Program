// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

//bitwise operator :it coverts given decimal into 8bit binary(which is default) then applies operations on its bits then convert the given result into decimal which is the output which is uint.

contract basic {
    int public a= 5;
    int public b= 4;
    
function get() public view returns(int){
    return(a&b);

// & :if bot bits are 1 then result will 1
//5=00000101 : binary of 5 has 3 bits to make it 8 add 5zeros infront
//4=00000100
//  00000100 : result is 4

//similarly for other bitwise operator according to their respective jobs refer to web3mantra solidity pdf 
}
//bitwise not operater:defined in my copy
function get2() public view returns(int){
    return(~a);
}

}

