//SPDX-License-Identifier:UNLICENSED
pragma  solidity >=0.5.0<0.9.0;

contract WithdrawPattern{
    address payable richest;
    uint max;
    mapping(address=>uint) public richestPeople;

    constructor() payable{
        richest=payable(msg.sender);
        max=msg.value;
        richest.transfer(msg.value);
    }

    function sendEther() public payable{
        require(msg.value>max,"You are not the richest");
        richest=payable(msg.sender);
        max=msg.value;
        richestPeople[msg.sender]=msg.value;
        // richest.transfer(msg.value);
    }
    function WithDraw() public payable{
        uint amount=richestPeople[msg.sender];
        richestPeople[msg.sender]=0;
        payable(msg.sender).transfer(amount);
    }
}

//EOA transfer -Withdrwal pattern-correctly
//contract transfer-withrawal pattern :-
// 1)when contract called senEther and paid less ether than richest then as per rule no further execution and the work get reverted as before
// 2)When contract has more ether than richest, then ether returning from the sendEther() , the contract should have only receive() for accepting the ether as contract address called for returning nor function address called for returning , so ether accepting function wont for accepting ether back here//in first no receive required it was reverted means back to intial stage
//3) If the receive() is not present then the contract wouldnot detect the amount of ether send by the contract which is in result it wont save, previous value would be there instead
//4)To rectify this we could use WITHDRAW DESSIGNPATTERNS ,in our parant contract if child contract doesnot have the receive() to receive the ether,then we mapped the eths with the address and make another function of withdraw for giving back the eths , which results that the parent contract becomes independent of the fact whether the child contact has the receive() or not as its should call withdraw() for getting back eths.
//before we have same function for sending eth and giving back the eth, for the successfull stroing of eth number there should be receive() then and in Withdrawpattern we broke that link by making separate function for sending and getting the eths

contract Player{
    //sendEther()-11 for sending the eths
    //WithDraw() for receiving the eths
    receive() external payable{
        //for receiving the ether
    }
}
