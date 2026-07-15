//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26 ;
contract HelloWorld {
    string public message;
    constructor (string memory newMessage){ 
        message=newMessage;
    }
      function setMessage(string memory newMessage) public {
        message = newMessage;
    }
    function getMessage()public  view returns  (string memory){
        return message;
    }
  
}