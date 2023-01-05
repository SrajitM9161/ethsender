// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract harsh {
    struct m1 {
        string name;
        string message;
        uint256 timestamp;
        address from;
    }

    m1[] m;
    address payable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function sendingmoney(string memory name, string memory message) public payable {
        require(msg.value > 0, "Please pay greater than 0 ether");
        owner.transfer(msg.value);
        memos.push(m1(name, message, block.timestamp, msg.sender));
    }

    function getm1() public view returns (m1[] m) {
        return m
        ;
    }
}
