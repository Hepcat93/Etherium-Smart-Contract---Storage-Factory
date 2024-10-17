// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// import {SimpleStorage, SimpleStorage2, SimpleStorage3} from './SimpleStorage.sol';
import {SimpleStorage} from './SimpleStorage.sol';

contract StorageFactory {

    // unit256    public    favoriteNumber
    //  type    visibility      name

    //SimpleStorage public simpleStorage;
    //changing this variable to list (1-d array)
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        // this 'new' key word is how Solidity knows to deploy a contract
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    // In order to interact with contract with the contract, I'll alsways need two things:
    // Address
    // ABI (technically a lie, I just need the function selector, but I will take it this way now)
    // The ABI stands for Application Binary Interface, will tell our code exactly how it can interact
    // with our contract. Solidity automatically recognizes when there's an ABI, for example when once
    // I imported SimpleStorage contract in this code. In the future I will learn other was to gen an ABI.

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}