// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract varscope{
    uint public val=4;

    function get() public view returns(uint){
        return val+4;
    }
}


//Just like inheritence, we have another method that is calling externally the smarty contract into another one "where parent contract's state variable should public else can't be injected in the followed contract" 

contract varscope2 { //here a new variable is assigned to old contract
   varscope waste= new varscope();// LHS: contract name to be assigned followed by variable name
    // RHS: "new" keyword followed by that contract call "()" 

   function get2() public view returns(uint){
        return waste.val();//accessing therir child by dot operater
    }

    function get3() public view returns(uint){
        return waste.get();
    }
}





