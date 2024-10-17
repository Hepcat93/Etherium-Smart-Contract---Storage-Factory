//SPDX-License-Identifier: MIT

//Simplified contract version because of gas calculation bugs :P

pragma solidity ^0.8.18;

contract SimpleStorage {
    
    uint256 myFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber=_favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function purrr() public pure returns(uint256) {
        return 7;
    }
}