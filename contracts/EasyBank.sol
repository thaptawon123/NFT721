// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EasyBank {
    mapping (address => uint256) balance;
    function getbalances() public view  returns (uint256){
        return  balance [msg.sender];
    }
    function deposit() public payable {
        balance[msg.sender] += msg.value;
    }
    function withdraw(uint256 amount) public {
        require(balance[msg.sender] >= amount, "Insuffient money toi withdaw!!");
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Withdraw failed!!");
    }
}