// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.22 <0.9.0;//^ means specific that version of pragma can be changed minorly like changes in decimal places

contract helloWorld{
    string public str="Hello World";
}
// Steps
// Contract File Create
// SPDX and Pragma use
// Contract Write
// Compile - Ctrl+S or auto-compile
// Deploy (Under compiliation icon)

contract demo{ //initialisation of num varibale
    uint num=5;//type 01

    constructor(uint _num){//type 02 (slightly different from original function type
        num=_num;//function takes value of _num and give to original num variable
    }
    
    function setter(uint _num) public{//type 03
        num=_num;//simple function
    }
}

