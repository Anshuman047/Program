//SPDX-License-Identifier:GPL 3.0
pragma solidity >0.5.0<=0.9.0;

//BETTER WAY FROM SELFDESTRUCTIVE: HELPS TO RECOVER ETHS WHEN CONTRACT GET JAMMED OR NEAR TO HACKED
contract Demo{
    address  payable public manager;
    uint randomValue=5;
    bool destroyed;//by default the value would be false

    constructor() {
        manager=payable(msg.sender);
    }
    modifier isNotDestroyed(){//this would check the condition if destoyed if false or not 
        require(!destroyed==true,"Contract is destroyed");//(destroyed==false,)
        _;
    }

//At every function modifier name is written that means it would be called and checked first destroyed value and proceed for the function that means if destroyed is true no proceed , otherwise prceed that is on false of destroyed
    function random() public view isNotDestroyed() returns(uint){
        return randomValue;
    }
    function sendEth() payable  public isNotDestroyed() {

    }
    function selfDestruct() public isNotDestroyed(){
        require(msg.sender==manager,"You are not idenitfied");
        selfdestruct(manager);
    }
//when this function is called then all eths from contract send to deployer and accessed by the deployer only and in this destroyed value becomes true that means when other function called after it, then they would respond throw error as destroyed comes true , those function would throw error which call the modifier as its name would be written at function's intilasation
    function destroy() public {
        require(manager==msg.sender,"You donot have he access");//checks whether caller of this function is deployer or not
        manager.transfer(address(this).balance);//Contract balance is transferred to the manager aka deployer of the contract
        destroyed=true;
    }

}  
//This above procedure is quite similar with selfDestrucutve keyword but upgraded point is that after the destroy no further function would be called and no transaction takes place.Unlike there where transaction comes true still in destructive mode and eth recovery become impossible
