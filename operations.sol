// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract practise{
    uint [] public arrayName=[1,2,3,4];

    //arrayName.length return the length of array
    function length() public view returns(uint){
        return arrayName.length;
    }

     //arrayName.push() pushes a element from end
    function length2() public {//no return as it is only altering the data
         arrayName.push(500);
    }

     //arrayName.pop() delete element fron the end by default
    function length3() public {//no return as it is only altering the data
         arrayName.pop();
    }
}