// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract varscope{
    uint public val=4;

    function get(uint value) public view returns(uint){
        value=5;//no use
        return val;
    }
}


//***Inheritence: we can use before defined contract's items into another followed contract by using "is" keyword followed by contract to be copied & for more than 1 write at once followed by comma","

contract varscope2 is varscope{ //varscope2 is derived from vascope
    function get2() public view returns(uint){
        return val+89;
    }
}





