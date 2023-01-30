// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;
//In interface all function should have external instead of public or internal or private

interface  Book{//they have bydefault virtual keyword for unimplemented function, so no need to write virtual

    function setDimensions(uint _length,uint _breadth,uint _height) external ;
    // function getDimensions() external view returns(uint,uint,uint) ;
    // function paperQuality(bool _value) external ;
}


interface  BookV1 is Book{ //BookV1 is derived from Book {Interface derived from interface}

    function paperQuality(bool _value) external pure ;
}
 contract Bookv2 is Book{//(Contract derived from interface: here you have to complete all the function from interface as all are unimplemented with override tag )->for getting no error

   function setDimensions(uint _length,uint _breadth,uint _height) external override{
       //codess
   }
   //and now go for you function

 }
