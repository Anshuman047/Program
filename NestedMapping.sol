// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract nestedap{

    mapping(uint=>mapping(uint=>bool)) public data;

function insert(uint row,uint col, bool value) public {//treat first key as row and second as col and their your value comes
    data[row][col]=value;
}
function returnVal(uint row,uint col) public view returns(bool){
    return data[row][col];
}
}