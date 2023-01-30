// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.22 <0.9.0;//^ means specific that version of pragma can be changed minorly like changes in decimal places

contract ONE{
   struct student{//declaring the data type
        string name;
        string ok;
    }  
   
   student[] public allstudents;//declaring same data-type of array to store same data-type of variable in each index,each index have their own respective childs


//function to take input and import into the array
   function getstudent(string memory _name,string memory _ok)public{

//Importing the input into the variable and for another method watch this from web3mantra
   student memory newstudent;
   newstudent.name=_name;
   newstudent.ok=_ok;

//pushing the variable into the array
   allstudents.push(newstudent);
   
   
     }
     //During deploy
    //  1)give input to the function, call this function : which will push the input into the array
     // 2)Give index number based upon data (imported data) into array and call the array give the respective index data
}