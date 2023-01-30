// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract HW {
    address swap;
    address[] public user;
    address public  Rich;
    uint Balance=0;
    address payable owner;
    mapping(address=>uint) public tokens;

function Donate() public payable{//for collection in contract balance
    
   }

   function Match() public payable{//for matching respective donation number to respective address
       Balance=address(this).balance-Balance;
       tokens[msg.sender]=Balance;
       }
   

    function compare()payable public  {
        user.push(msg.sender);
        for (uint i = 1; i <= user.length; i++) {
            if (tokens[user[i]] < tokens[user[i - 1]]) {
                user[i] = swap;
                user[i - 1] = user[i];
                swap = user[i - 1];
            }
            Rich=user[i];
        }
    }
   
    function returnEth()payable public {//for returning the ether, should called by same address whose ether to be returned
        address payable User=payable(msg.sender);
        User.transfer(address(this).balance);
        // User.transfer(msg.value); //this should be in same function where the eth is transferred as because there msg.value gonna hold that function transaction as here there is no transaction so no amount gone to msg.value
    }
}
