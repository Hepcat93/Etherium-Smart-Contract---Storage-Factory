//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; // solidity versions

contract SimpleStorage {
    // favoriteNumber gets initialized to zero if no value is given
    
    uint256 myFavoriteNumber; // 0

    //stating a list: uint256 listOfFavoriteNumbers;

    //                                   indices:  0.  1.  2.
    // the list itself (effectively, a 1-d array): [77, 78, 90]


    //creating a custom type
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // static array:
    // Person[3] public listOfPeople;

    // dynamic array:
    Person[] public listOfPeople; // []


    //Claire -> 77
    mapping(string => uint256) public nameToFavoriteNumber;

    //Creating a variable of the (custom) type Person
    //Person public pat = Person(7, 'Pat'); -shorter form, below will be the explicit form
    // Person public pat = Person({favoriteNumber: 7, name: 'Pat'});
    // Person public mariah = Person({favoriteNumber: 16, name: 'Mariah'});
    // Person public john = Person({favoriteNumber: 12, name: 'John'});

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber=_favoriteNumber;
    }

    //view, pure are kind of functions which do not modify state
    //actually these words just limit what a function is allowed to do
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function purrr() public pure returns(uint256) {
        return 7;
    }


    // The EVM can read and write to several places (easier version):

    // Read and write: storage, stack, calldata, memory. The latter two are temporal.
    // Calldata is not changeable inside a function.

    // Write only: logs
    // Read only: Chain data

    function addPeople(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name]=_favoriteNumber;
    } 
}

    // !!!Structs, mappings and arrays need to be given one of these keywords! String is also an array of letters!!!