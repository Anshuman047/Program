// SPDX-License-Identifier:Unlicensed

//In general language:all programs store in memmory(ram) and erased when they were executed : not releated to storage where data stored permanently dependent as per user

pragma solidity >=0.7.0;

contract varscope{
    uint public val=4;

    function add() public pure returns(string memory){//here we have to write "memory" in returns as because function does not  know the location to store the string as there is default what is known to compiler to store in memory and what is not there use memory in return followed by data type.**** refer this gfg not over this 'https://www.geeksforgeeks.org/storage-vs-memory-in-solidity/' 
    // {here concept are same for return and parameter}
        return "anshuman";
    }
}

contract varscope2{
    uint public number=2;
    //for uint,int,address is default storeing in memory so no need to write memory.

    function ok(uint number02) public pure returns(uint){
        return number02;
    }
}

contract varscope3{
     function ok(string memory number03) public pure returns(string memory){//while in returns it does not from where to return, so write memory 
         
        return number03;
    }
    //the memory keyword used when declaring inside the function, if declared under contract only then compiler knows 
}

contract varscope4{
     function ok(string memory num) public pure{
        num='ac';//once written above , no need to write memory inside else write inside
        
    }
    
}

contract varscope5{
     function ok() public pure{
       string memory num='ac';//once written above , no need to write memory inside else write inside//warning for unused 
        
    }
    
}


