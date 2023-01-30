// SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;


abstract contract Book{
    uint length;
    uint height;
    uint breadth;

    function setDimensions(uint _length,uint _breadth,uint _height) public {
        length=_length;
        breadth=_breadth;
        height=_height;
    }
     function getDimensions() public view returns(uint,uint,uint) {
        return(length,breadth,height);
    }
    function paperQuality(bool _value) public virtual;
}


abstract contract BookV1 is Book{ //BookV1 is derived from Book
    function paperQuality(bool _value) public pure override
    { _value=true;
    }
}

