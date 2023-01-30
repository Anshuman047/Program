// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

//events are not accessible from contracts , it is only used for get values from frontends

contract events{
event transfer(address indexed _from, address indexed _to, uint _amount );//argument type introduced 
//Here :"indexed" is optional, as it used beacuse when there will be many people doing transaction, they wanted to see only their numbers of transactoin and we have to used only one event in contract then "indexed" will help us by filtering out all the transaction done by other account and show respective transaction to respective address , would be same for everyone.//******use indexed not more than 3 in event arguments

    function transf(address to, uint amount) public{
        emit transfer(msg.sender,to,amount);//emit eventName(parameter transfered respectively)
    }

}
