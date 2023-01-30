// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//Mapping itertaer pattern
//Here in this contract we donot know who are the user of our contract or who had used our contract, for this we made an array which store the address who are using simultaneously
contract Demo {
    mapping(address => uint)  tokens;
    address[]  User;//address type array used to store the msg.sender who are calling this function
    function transfer(uint amounts) public {
        tokens[msg.sender] = amounts;
        User.push(msg.sender);
    }
    function returnArray() public view returns(address[] memory){
        return User;//used to return the array which is storing the user address
    }
}

contract Pattern {

}
