// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;



contract Errors{
    address public owner;
    constructor(){
  owner=msg.sender;
    }
error send(address deployer,  uint balance );//error store respective data type where respective values would come in revert , which can be used to restore function when condtition not followed and can watch wo done this wrong from revert-inputs which is visible in console screen

    function transfEOA(address payable user, uint _amount)  public payable  {
        if(_amount<100){
            revert send({deployer:msg.sender,balance:_amount});
        }
        user.transfer(msg.value);
    }
//require only throws error statement and checks
//error and reverts can hrow what was mistake which arised error and check can be done bye if-else
}
