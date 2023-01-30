// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

//logical or : ||(if one is true , all are true)
//logical and : && (if one is false, all are false)
//logical not :! (inverts the result)

contract basic {
    uint public val= 30;

    function get() public pure returns(bool){
      return (2>4 || 2<3);    
    }

    function get2() public pure returns(bool){
      return (2>4 && 2<3);    
    }
}
