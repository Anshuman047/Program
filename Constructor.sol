// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract const{
//Its is type of function which runs directly with out calling it

address public  owner ;
uint public balance;


//constructor one per contract
constructor(uint balance02){//It cant called as it is by default called ,that is why it will ask for its parameter before deplyment
   owner= msg.sender;
   balance=balance02;
}
}
//as the const contract is called to inherit in base contract but constructer function in it wanted its parameter while calling for inheritence but in normal function they would called but they would ask for parameter after deployment 

//Method 1
contract base is const(789321){// pass parameter in parent contract where real constructor exist  ,here the parameter direct goes to constructor while calling


}

//method 2
contract Derived is const {//here also define a new constructor and write followed by passing paramter in p[arent contract where real constructor exist
    constructor() const(78){

    }
}