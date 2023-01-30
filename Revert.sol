// SPDX-License-Identifier: Unlicensed

pragma solidity>=0.7.0;

// revert keyword is used as to throw error only

contract example{
    address public owner;
    uint public count;

    constructor(){
        owner=msg.sender;
    }

function call() public{
    if(msg.sender==owner){
count=count+2;
}
else{
    revert("GO away!!!");//it will only throw error
}


}
}