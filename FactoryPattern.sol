// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0<0.9.0;
//factory pattern

contract Demo{
    //by using objects we can use other contract's method, function etc.//But problem is that we donot have any record that which object is doing which changes on the parent contract.//therefore whenever you are creating object store them 
    //Hence we are creating the object of Pattern type, so we would store the object in Pattern type array

Pattern[] public arr;
function objectsCreation() public returns(Pattern){
   Pattern obj=new Pattern();
   arr.push(obj);//at each creation of objects , it pushes to the Pattern array type//to record the number of objects made called by the user
   return obj;
  }
  //Caution:In one function while changing the state variable and returning the variable occur some bug in which as it is returning but the variable wont display in the frontEnd***********************
}

contract Pattern{
  
}