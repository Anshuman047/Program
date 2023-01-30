// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

//VISIBILITY--
contract varscope{
    uint public val=4;//"public" allows to be called the var from anywhere
    uint internal val2=5;//"Internal" allows to only called through internally(from function or inside the same contract), and from derived contract
    uint private xal=34;//"Private" allows to be called internlly only in respective contract not from derived contract

    function get() public view returns(uint){
        return val;
    }
     function get2() public view returns(uint){
        return val2;
    }
    function get34() public view returns(uint){
        return xal;
    }
}


//Inheritence:derived contract

contract varscope2 is varscope{ 
    function get3() public view returns(uint){
        return val;
    }
    function get4() public view returns(uint){
        return val2;
    }
}

//Externally called method: Only Public is valid




