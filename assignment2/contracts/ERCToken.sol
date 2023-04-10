// SPDX-License-Identifier: MIT
pragma solidity >=0.4.1;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract Web3ClubsToken is ERC20, AccessControl {
    constructor() ERC20("Web3ClubsToken", "WCT") {
        _mint(msg.sender, 10000 * 10 ** decimals());
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function transfer(address _to, uint256 _value);
}