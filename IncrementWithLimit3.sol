// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract IncrementWithLimit {


    uint256 public num; // the number to increment

    // keys are unique, values can be repeated.
    //      key       value
    mapping(address => uint256) public addressToIncrementedCount;


    function incrementNumber() public {

        // if(addressToIncremented[msg.sender] == false) {
        //     num++;
        //     addressToIncremented[msg.sender] = true;
        // }

// gate keep num++ to people who haven't minted
        require(addressToIncrementedCount[msg.sender] < 3,
                "This address has already increased num the max amout of times (3)");
        num++;
        // num = num + 1;
        // num = num + 4;
        // num+ = 4;
        addressToIncrementedCount[msg.sender]++;
        
    }
}