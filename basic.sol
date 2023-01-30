// SPDX-License-Identifier:Unlicensed

// link of notes:https://drive.google.com/file/d/1bFTiUNWox1nxbjAOvXdLRtorVGVxiH7D/view

pragma solidity >=0.7.0;

contract basic {
    // Code
    string public name="Anshuman sahoo";//public keywrd specifies the visiblity and also give access to call the respective declaration from outside of contract to get its value

    uint public pos=34;//only +ve
    int public neg_pos =23;//both -ve & +ve
    int8 public length =124; //the digit specfies respective range ,, derived from formula(same for unsigned int),,its rule is it starts from 8 and increases till 256 by multiplying 2 ,, for normal int and uint the digit is bydefault 256


    bool result= true;
    string TOPIC="Garry";
    bytes4 predefined="web3";//limits needs cab be defined with data type, it coverts the input in hexadecimal and stores in array format //CAUTION:If you are inserting the "inputs should be in bytes" externally from the function(at deploy section), it consumes less gass fess than strings as string is dynamic consumes more  
    //In fixed type bytes where their limit is defined, the max limit only be 32  
    //bytes where limit is not present called dynamic data type,can take any limit
    address add=0xC2636364F3766d5b2B2f6b06Cc779b64bC9e54cB;//Eoa address= user address from metamsk
    address add2=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;//smart contract address
}
