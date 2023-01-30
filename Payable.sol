// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

//It would capable the contract to trasact the ether

contract payables{
    address payable public owner;//address owner variable is now capable for transaction (Formate for adding payable in state variable)

    constructor(){//this is used because it safest for storing transacting address as we have not to call it

        owner=payable(msg.sender);//global variable storing transaction address capable for transaction (Formate for adding payable in global variable)
    }

    function transaferEth() payable public {//now function is capable for transaction 
          
        owner.transfer(msg.value);//"msg.value" is global variable which store eth here which is given by user and from ".transfer" operator it sends those eth enterd from user to owner address,here we used global var bcz it has no limitation of holding ether in it and it is by default payable where as state variable is not

    }

    //*****After the deployment, the address would deply would be owner and after deplyment change address and just enter the amount in ether in value section

}