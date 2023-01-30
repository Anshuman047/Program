// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract basic {
    uint public a= 30;
    uint public b=23;

    function get() public view returns(bool){
        return (a==6 ? true : false);//we are returning the respond in true-false, thats why returns is bool , it could be any of data type depending upon the respond
    }//check if a is equals to 6 return true , not then false
}
//if-else operator
contract basic2 {
    uint public c= 30;
    uint public d=23;

   function get() public view returns(uint){
     if(c==4) {
         return 1;
     } else if(c==3){
         return 2;
     }else if(d==5){
         return 32;
     }else{
         return 100;
     }
   }
}    