pragma solidity >0.4.1;

contract Shopping {
    uint public shoppingItems;
    struct ShoppingDetails{
        uint id;
        string name;
        uint price;
    }

    ShoppingDetails[] public detail;

    // adds data into the array
    function addItem(uint _id, string memory _name, uint _price) public {
        detail.push(ShoppingDetails(_id, _name, _price));
        shoppingItems += 1;
    }

    // displays all data
    function getItems() public view returns(ShoppingDetails[] memory){
        return detail;
    }


}