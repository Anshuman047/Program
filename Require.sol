//SPDX-License-Identifier: Unlicensed 

pragma solidity >=0.7.0;

// require keyword checks that whether it next condition is followed or not, if followed , allows to go further if not then throws the error and restore change to initial states in that scope where it is present
//it will return the reamining gas fees to owner
//it behaves like if conditional but when condition donot match stops and throw error

contract error{
    address public owner;

    constructor(){
        owner=msg.sender;//when the contract deploys then constructor itself take the address which deployed the contract and import it to owner var
    }

function call() public view{//msg.sender import the address ID which called(func) or deployed(contract) resoective scoping, where it is curently present

  require(msg.sender==owner);//ehre msg.sender stores the id which called this function
  //require verifies whether the ID called this function is equals to ID which deplyed the contract
}

}

contract example{
    address public owner;
    uint public count;

    constructor(){
        owner=msg.sender;
    }

function call() public{
count=count+2;
  require(msg.sender==owner,"You owner address didnot match with caller!!!");//A statement followed by comma in inverted collons can be used as throwing error if condition not satisfied
}

}