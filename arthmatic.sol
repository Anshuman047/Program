// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract basic {
    uint public val= 30;

    function get() public{ //in updation return rahe ya na rhe ek hi baat hai
        val=val+2;
    }

    function get2() public{ 
        val=val-2;
    }

    function get3() public{ 
        val=val*2;
    }

    function get4() public{ 
        val=val/2;
    }

    function get5() public{ 
        val=val%2; //gives the remainder between the 2operands
    }

    function get6() public{ 
        val++;//+1
    }

    function get7() public{ 
        val--;//-1
    }
}
