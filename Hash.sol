// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract Hash {


    // Magic word is "Solidity"
    function hash(string memory _word) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_word));
    }

}