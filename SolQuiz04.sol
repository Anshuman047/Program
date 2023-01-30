
// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;


contract Wallet{
address payable public  owner;
event send(address ,uint);

constructor(){     //1  
owner=payable(msg.sender);
}

function sendEthEOA(address payable user) payable public  {  //2
require(msg.sender==owner,"Access denied!!"); 
 user.transfer(msg.value);
}

function sendEthToOwner()payable public  {  //3&5
require(msg.sender!=owner,"Access denied!!"); 
 owner.transfer(msg.value);
emit send(msg.sender,msg.value);    
}

function balanceOfOwner() public view  returns(uint){//4
return owner.balance;//".balance" gives the current balance
}

}


