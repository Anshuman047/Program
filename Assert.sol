//SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

//assert keyword is same as require only the difference is it doesnot return the remaining gas fees rather consumes all and error msgs cannot be shown//they are only use for internal contract errors

contract example{
    address public owner;
    uint public count;

    constructor(){
        owner=msg.sender;
    }

function call() public{
count=count+2;
  assert(msg.sender==owner);
}

}