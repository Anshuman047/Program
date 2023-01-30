// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

// mapping judges the respective data type at lhs mapped with another dataype at rhs and imports them into the variable.

contract mappings{
   mapping(address => uint) public balances;
   //mapping(datatype01 "mapped with(=>)" datatype02) public variable;//declaration of data type and storing in var.

   address public ok;//default store 00...              

 function setBalances(uint bal) public {//user input rhs

    balances[msg.sender]=bal;//balance[msg.sender] becomes as uint type var and we can insert the bal in it

     //"msg.sender" is the global variable "default" data type is address(not to be declared separetly), capabale of returning and storing the address
    //used this msg.sender instead of declaring addrss var and using there bcz WHILE DECLARING THE ADDRESS VAR it would get 00.. by default as we are not entering the address (wanted to enter while calling) and "that state address var is UNCHANGAVLE once deployed" But that global var is not state var, so it allows the changes.
    //  As while declaring ,it store the user address and return blank as not declared for returning.
 }
 

}

contract mapping2{
   mapping(uint=>string[]) public data;
           
 function insert(uint roll,string memory name) public {

  data[roll].push(name);//data[roll] becomes as dynamic array type var, we can insert the name into it// the insertion should as default method of data[roll] , as not other insertion it follows
 }

 function result(uint _roll ) public view returns(string[] memory) {
   return data[_roll];
  
 }
} 