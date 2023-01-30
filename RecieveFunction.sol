// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.7.0 <0.9.0;
//You can send the transaction inserting the number of eths or wei from value section and calling the respective payable function
contract Demo{
    uint public a;

    function sendEther() public payable{//fucntion is capable for storing ether or transaction inside the contract but contract address is not capable for storing in it

    }
    function sendEther2() public payable{//fucntion is capable for storing ether or transaction inside the contract but contract address is not capable for storing in it

    }

    receive() external payable{//from this fucntion , now the contract address is now capable for receiving the ether//you can directly send the ether to contract by sending ether through metaMAsk by using the contract address in which no calling of function would be requierd 
    
    }

}
