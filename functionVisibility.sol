// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;


contract withInContract{
    
    function get() public pure returns(uint){
        return 1;//Cab be called from anywhere
    }
     function get2() internal pure returns(uint){
        return 2;//Can be called from same contract and derived contract
    }
    function get3() private pure returns(uint){
        return 3;//Can be called from same contract only
    }
    function get4() external pure returns(uint){//Only cannot be called internally or with in the contract ,rest called from everywhere
        return 4;
    }
}


//Inheritence:derived contract //inherited : public,internal,external

contract varscope is withInContract{ 
    uint public x=get();
    uint public y=get2();
    // uint public z=get4(); //get4() can't be called with in the contract as it is external
}

//ExternallyCalled :derived contract //inherited : public,external




