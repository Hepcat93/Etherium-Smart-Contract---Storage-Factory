// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    // we put where we are reading from because string is array and arrays are special in Solidity
    //                      pure and not view because we're not reading from the storage
    function sayHello() public pure returns(string memory) {
        return "Hello";
    }

    // +5
    // overrides
    // virtual override
    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;
    }
}