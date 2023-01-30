// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.7.0 <0.9.0;

contract Demo{
    uint public a;
    function f1() public{
        a=1;
    }
    function f2() public{
        a=2;
    }
    fallback() external{//used when someinput gone wrong and smart contract is very big to detect that mistake then this fallback function helps to stop the this contarct to go into mess as arising as backup plan to that mistake(which is calling a unknown fucntion)
        a=5;
    }
}
