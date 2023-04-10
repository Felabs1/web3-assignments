pragma solidity >=0.5.1;
contract EthTransfer{
uint public amount;
    address payable owner;
    constructor(){
        owner = payable(msg.sender);
    }

    function setAmount(uint _amount) public{
        amount = _amount;
    }

    function sendEth(address payable receiver) payable public {
        require(owner == msg.sender, "only owner can send eth");
        amount = msg.value;
        receiver.transfer(amount);
    }
}