// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract structs{

    struct student{//Data type declaring structure for using different type of variable in a same time
        string name;
        uint age;
    }

    student public anshuman;//declaring a variable from that data type

    function get() public {
        anshuman= student("ANSHUMAN",19);//intialization of that variable
    }
   
   //for targeting the variable's element and returning it
   function get2() public view returns(uint){
       return anshuman.age;
   }

}