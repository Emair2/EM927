// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract FuntionWithCooldown{

uint256 public constant COOLDOWN_TIME =10;
uint256 public num;
uint256 public lastTimeIncremented;

function incrementNum() public{
    uint256 currentTime = block.timestamp;
    require(currentTime - lastTimeIncremented > COOLDOWN_TIME, "Please wait until the Cooldown time hhas elapsed.");
    num++;
    lastTimeIncremented = currentTime;

}
   
}