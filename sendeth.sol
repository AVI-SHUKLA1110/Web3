// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
3 ways to send eth-
-transfer() - send txn, but if there is an error midway it fails
-send() - send txn, and if it fails returns bool
-call() - send txn and if it fails returns bool and data
*/

// CONTRACT 1 - Send ether
contract sendEther {
    constructor() payable {}

    receive() external payable {} // now fallback use is deprecated and replaced by `receive`

    function sendViaTransfer(address payable _to) external payable {
        _to.transfer(123);
    }

    function sendViaSend(address payable _to) external payable {
        bool sent = _to.send(123);
        require(sent, "send failed");
    }
    function sendViaCall(address payable _to) external payable {
        (bool success, ) = _to.call{value: 123}("");
        require(success, "call failed");
    }
}

// CONTRACT 2 - Receive Ether
contract receiveEther {
    event Log(uint amount, uint gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }
}
