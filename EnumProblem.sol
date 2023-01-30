//SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract Enums{
    enum week{monday,tuesday,wednesday,thrusday}//it takes input and give output in index numver

    week public value;//week is treated as data type

    function checkStatus() public view returns (string memory){

        if(week.monday==value)//internally numbers are compared
        return "its monday";
        else if(week.tuesday==value)
        return "its tuesday";
        else if(week.wednesday==value)
        return "its wednesday";
        
        return "its Thrusday";
    }

    function returnStatus() public view returns(week){//in returns index of week is mentioned as it is returning week type variable
        return value;
    }
    function chnageStatus(week _value)   public  {//chnages the value//input in index number
         value=_value;
        
    }
}

