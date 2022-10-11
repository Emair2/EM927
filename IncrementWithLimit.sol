// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract IncrementWithLimit {


    uint256 public num; // the number to increment

    // keys are unique, values can be repeated.
    //      key       value
    mapping(address => bool) public addressToIncremented;


    function incrementNumber() public {

        // if(addressToIncremented[msg.sender] == false) {
        //     num++;
        //     addressToIncremented[msg.sender] = true;
        // }

// gate keep num++ to people who haven't minted
        require(addressToIncremented[msg.sender] == false,
                "This address has already increased num, cannot increase more than once.");
        num++;
        addressToIncremented[msg.sender] = true;
        
        
    }
}