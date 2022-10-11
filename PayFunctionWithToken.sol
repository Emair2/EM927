// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.7.3/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.7.3/token/ERC20/extensions/ERC20Burnable.sol";


contract EM is ERC20, ERC20Burnable {
    constructor() ERC20("EM", "MTK") {
        _mint(msg.sender, 30000 * 10 ** decimals());
    }

    

uint256 public num;
uint256 public constant FEE = 10;

function incrementNum() public{

    //address recipient, uint256 amount
    transfer(address(this), FEE * 10 **decimals());
    num++;
}

}