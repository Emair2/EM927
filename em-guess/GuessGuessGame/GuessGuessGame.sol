// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.7.3/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.7.3/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.7.3/access/Ownable.sol";
import "@openzeppelin/contracts@4.7.3/token/ERC20/extensions/draft-ERC20Permit.sol";

contract EM is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    constructor() ERC20("EM", "MTK") ERC20Permit("EM") {
        _mint(msg.sender, 30000 * 10 ** decimals());
    }

     uint256 public num; 
     mapping(address => uint256) public addressToIncrementedCount;

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }


    function answer1(string memory _guess) public {

        require(keccak256(abi.encodePacked(_guess)) == 0x7464bd924e765ce487910dde7cf78faee47c96a6328f88a0cd374cd7c2491abd,
        "Incorrect guess, please try again");
        _mint(msg.sender, 2 * 10 ** (decimals()-2)); 
        
        require(addressToIncrementedCount[msg.sender] < 1,
        "You already got your EM Coin!!!!");
        num++;
        addressToIncrementedCount[msg.sender]++;

    }

    function answer2(string memory _guess) public {
        require(keccak256(abi.encodePacked(_guess)) == 0x53cd20a71c8974d8e317a7323d3f45d878d5529670789c7a0ea65b6ff4bf5bf7,
        "Incorrect guess, please try again");
        _mint(msg.sender, 2 * 10 ** (decimals()-2)); 
        
        require(addressToIncrementedCount[msg.sender] < 1,
        "You already got your EM Coin!!!!");
        num++;
        addressToIncrementedCount[msg.sender]++;
    }

    function answer3(string memory _guess) public {
        require(keccak256(abi.encodePacked(_guess)) == 0x5c7d18be0b53c6c839ab2c61a64b224ac3898baced1823dcfd1a0eaa48a1c85e,
        "Incorrect guess, please try again");
        _mint(msg.sender, 2 * 10 ** (decimals()-2)); 

        require(addressToIncrementedCount[msg.sender] < 1,
        "You already got your EM Coin!!!!");
        num++;
        addressToIncrementedCount[msg.sender]++;
    }

    function answer4(string memory _guess) public {
        require(keccak256(abi.encodePacked(_guess)) == 0xdf2bb0625b1d8cdbebcdfb13bdd52114aa8fc21207f987594d0baeb8a2ad0616,
        "Incorrect guess, please try again");
        _mint(msg.sender, 2 * 10 ** (decimals()-2)); 
        
        require(addressToIncrementedCount[msg.sender] < 1,
        "You already got your EM Coin!!!!");
        num++;
        addressToIncrementedCount[msg.sender]++;
    }

    function answer5(string memory _guess) public {
        require(keccak256(abi.encodePacked(_guess)) == 0xaaf24dc3fdd0a2e80151f74ae4e840552d17449c8277782edc2c7704237c6cfa,
        "Incorrect guess, please try again");
        _mint(msg.sender, 2 * 10 ** (decimals()-2)); 

        require(addressToIncrementedCount[msg.sender] < 1,
        "You already got your EM Coin!!!!");
        num++;
        addressToIncrementedCount[msg.sender]++;
    }

}
