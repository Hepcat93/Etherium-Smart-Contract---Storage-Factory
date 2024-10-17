//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; // stating our version

contract SimpleStorage {
        // Basic Types: boolean, uint, int, address, bytes
        bool hasFavoriteNumber = true;
        uint256 favoriteNumber = 88;
        string favoriteNumberInText = 'eighty-eight';
        int256 favoriteInt = -88;
        address myAddress = 0xCfa16Ce3c588ffFECA2929A4411894c4b304C640;
        bytes32 favoriteBytes = 'cat';
}