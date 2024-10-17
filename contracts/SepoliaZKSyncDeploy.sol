//SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

contract SimpleStorage {

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople; // []

    mapping(string => uint256) public nameToFavoriteNumber;
    
    function addPeople(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name]=_favoriteNumber;
    } 
}