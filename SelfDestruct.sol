//SPDX-License-Identifier:GPL 3.0
pragma solidity >0.5.0<=0.9.0;
//For precaution from the hackers
contract Demo{
    address  payable public manager;
    uint randomValue;

    constructor() {
        manager=payable(msg.sender);
    }
    function random() public view returns(uint){
        return randomValue;
    }
    function sendEth() payable public {

    }
    function selfDestruct() public{//When someone hacks this contract, then manager aka owner of this contract call this function and all the ethers transferd to the  manager or the address which inside the selfdestructive keyword. 
        require(msg.sender==manager,"You are not idenitfied");
        selfdestruct(manager);//here this would transfer all the eths from contract to the address which is written inside the brackets
        //after this selfdestrcut enabled then all the values intialised with their respective variables would get reset like above variable :manager and randomValue would get reset to their default value just like delete keyword indirectly this contract get destroyed
        //But the problem is that after applying the self destructive keyword further transacted eth cannt be extracted or recoverd as contract get static although transaction can be done as msg.sender which was stored in manager got nill, which means no further recovery of eth from the contract address although transaction can be done
    }
}
