pragma solidity >=0.4.1;

contract logicalOperation {
    bool public a = true;
    bool public b = false;

    function aAndB() public view returns(bool){
        return a && b;
    }

    function aOrB() public view returns(bool){
        return a || b;
    }

    function notA() public view returns(bool){
        return !a;
    }

    function notB() public view returns(bool){
        return !b;
    }
}