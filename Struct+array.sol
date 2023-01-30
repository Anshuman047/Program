//  SPDX-License-Identifier:Unlicensed

pragma solidity >=0.7.0;

contract practise{
    struct student{//declaring the data type
        string name;
        uint age;
    }  
   
   student[] public allstudents;//declaring same data-type of array to store same data-type of variable in each index,each index have their own respective childs


//function to take input and import into the array
   function getstudent(string memory _name,uint _age)public{
   student memory newstudent;
//Importing the input into the variable and for another method watch this from web3mantra

//Method 1
   newstudent.name=_name;
   newstudent.age=_age;
//Method 2
   //   newstudent=student(_name,_age);//it directly imports to respective child
   

//pushing the variable into the array
   allstudents.push(newstudent);//would push at index 0
   //TO ACCESS THEM: newstudent[0].name similalry for others indexs , just use index value 
   
   // allstudents[index]=student(_name,_age);// directly we will take from user the index and its respective child and push it,,,no need of forming variable and pushing for each index
   }
     //During deploy
    //  1)give input to the function, call this function : which will push the input into the array
     // 2)Give index number based upon data (imported data) into array and call the array give the respective index data
}