// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract practise{
    //static array input depends on the limit
    uint [5] public arrayName=[1,2,3,4,5];//no. of elements<=size
    //type[arraySize] public arrayName; *********
    // at deploy pass the index value to get respective input value

//dynamic array
uint [] public practise2=[1,41,77];//could take input infinte
}

contract array{
    uint[] public arrays=[1,2,3,4,5];

    function get() public view returns(uint[] memory){
        return arrays;//get array from function
    }

    function get2() public view returns(uint){
        return arrays[2];//getting the array elements
    }

    function get3() public returns(uint){//view is deleted as we are changing the state variable
        arrays[2]=100;//accessing the array elements
        return arrays[2];
    }
} 
