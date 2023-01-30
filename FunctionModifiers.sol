//SPDX-License-Identifier: Unlicensed
pragma solidity >=0.7.0;

//modifier defines pre-requiste and checks if it is achived before entering into respective function where the modifier is tagged  
//it is like a require only but it couldnot be written again for other function as it's tagg is used to connect with that function where as require has to be written again and again for every function

contract example{
    address public owner;
    uint public count;

    constructor(){
        owner=msg.sender;//msg.sender will get the address which called this function and here constructor is by default called by address which deployed smart contract, so owner gets address which deployed contract
    }
   
    modifier onlyOwner{//here modifier checks below condition,if true then allow to call the respective where modifier is tagged

    require(msg.sender==owner);//checks if owner has msg.sender address or not
        _;
    }
    
     function sendMoney() public onlyOwner{ //modifier connect with function writing its name in function declaration
     
         //codes
     }
}

