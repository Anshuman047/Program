// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

//enum used to restrict the child of declared datatype//is used for making contrct readable

contract enums{

   enum size{small,medium,large}  //donot write in normal data type formate,just type inside normally.
 //enum DATATYPE(child01,...etc) <-- declaration
             
//***** On calling below "var or function" would return child's respective index value from above declaration and for insertion we have to insert either of the index values

        size public choice= size.medium;//now var(choice) is medium//default value is 0

//*****From this function, customer could change the var(choice) as per required by calling it

            function setSmall() public {//var=small 
                choice=size.small;
            }

            function setMedium() public{//again var=med
                choice=size.medium;
            }

            function setLarge() public{//var=large
                choice=size.large;
            }

 function returnChoice() public view returns(size){//var=large
                return choice;//would return current index value of size child it is containing
            }

     
} 