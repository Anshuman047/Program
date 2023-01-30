// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract BookV1 { //BookV1 is derived from Book
mapping(string=>address) public store;

constructor(){ 
store['Book']=address(new Book());//in normal object we are linking the contract by the contract_name type variable by "new contract_name()" then we use that var wrt that contract//but here we are connecting that "new contract_name()" address with a string thorugh mapping and then we can use that mapped string wrt that contract
}

// store['Book'].getDimensions //use like this as usual
}
 


contract Book{
    uint length;
    uint height;
    uint breadth;
    bool option;


    function setDimensions(uint _length,uint _breadth,uint _height) public {
        length=_length;
        breadth=_breadth;
        height=_height;
    }
     function getDimensions() public view returns(uint,uint,uint) {
        return(length,breadth,height);
    }
}



