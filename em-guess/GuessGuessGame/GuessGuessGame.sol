// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.7.3/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.7.3/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.7.3/access/Ownable.sol";


contract EM is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("EM", "MTK") {
        _mint(msg.sender, 30000 * 10 ** decimals());
    }

    uint256 public num; 
    mapping(address => bool) addressToHasRedeemedFreeTokens;
    //     person        question #    did they answer?
     mapping(address => mapping(uint => bool)) public addressToAnswerTable;
     
     uint256 public constant FEE = 10;
     uint256 public constant FREE_TOKEN_AMOUNT = 10;

     Event Answer1Event(bool wrongOrCorrect)

    function InitialEMCoin() public view returns (uint) {
        return address(this).balance;
    }

    //receive() external payable{}
    // fallback() external payable{}     


    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function redeemFreeTokens() public {
        // check if person has already redeemed tokens
        require(addressToHasRedeemedFreeTokens[msg.sender] == false, "Already redeemed free tokens");
        // if they haven't, mint them 10 tokens
        _mint(msg.sender, FREE_TOKEN_AMOUNT * 10 ** decimals());
        // then set addressToHasRedeemedFreeTokens to true for this particular person;
        addressToHasRedeemedFreeTokens[msg.sender] = true;
    }

    
    function answer1(string memory _guess) public {
        require(addressToAnswerTable[msg.sender][1] == false,
        "You already got your EM Coin!!!!");

        transfer(address(this), FEE * 10 ** decimals());

        require(keccak256(abi.encodePacked(_guess)) == 0x7464bd924e765ce487910dde7cf78faee47c96a6328f88a0cd374cd7c2491abd,
        "Incorrect guess, please try again");   
        _mint(msg.sender, 2 * 10 ** (decimals()-2)); 
        
        addressToAnswerTable[msg.sender][1] = true;
        
    }

    function answer2(string memory _guess) public {
        require(addressToAnswerTable[msg.sender][2] == false,
        "You already got your EM Coin!!!!");

        transfer(address(this), FEE * 10 **decimals());

        require(keccak256(abi.encodePacked(_guess)) == 0x53cd20a71c8974d8e317a7323d3f45d878d5529670789c7a0ea65b6ff4bf5bf7,
        "Incorrect guess, please try again");
        _mint(msg.sender, 2 * 10 ** (decimals()-2)); 
        
        addressToAnswerTable[msg.sender][2] = true;
    }

    function answer3(string memory _guess) public {
        require(addressToAnswerTable[msg.sender][3] == false,
        "You already got your EM Coin!!!!");

        transfer(address(this), FEE * 10 **decimals());

        require(keccak256(abi.encodePacked(_guess)) == 0x5c7d18be0b53c6c839ab2c61a64b224ac3898baced1823dcfd1a0eaa48a1c85e,
        "Incorrect guess, please try again");
        _mint(msg.sender, 2 * 10 ** (decimals()-2)); 

         addressToAnswerTable[msg.sender][3] = true;
    }

    function answer4(string memory _guess) public {
        require(addressToAnswerTable[msg.sender][4] == false,
        "You already got your EM Coin!!!!");

        transfer(address(this), FEE * 10 **decimals());

        require(keccak256(abi.encodePacked(_guess)) == 0xdf2bb0625b1d8cdbebcdfb13bdd52114aa8fc21207f987594d0baeb8a2ad0616,
        "Incorrect guess, please try again");
        _mint(msg.sender, 2 * 10 ** (decimals()-2)); 
        
        addressToAnswerTable[msg.sender][4] = true;
    }

    function answer5(string memory _guess) public {
                require(addressToAnswerTable[msg.sender][5] == false,
        "You already got your EM Coin!!!!");

        transfer(address(this), FEE * 10 **decimals());

        require(keccak256(abi.encodePacked(_guess)) == 0xaaf24dc3fdd0a2e80151f74ae4e840552d17449c8277782edc2c7704237c6cfa,
        "Incorrect guess, please try again");
        _mint(msg.sender, 2 * 10 ** (decimals()-2)); 

        addressToAnswerTable[msg.sender][5] = true;
    }

    function answer6(string memory _guess) public {
                    require(addressToAnswerTable[msg.sender][6] == false,
            "You already got your EM Coin!!!!");
    
            transfer(address(this), FEE * 10 **decimals());
    
            require(keccak256(abi.encodePacked(_guess)) == 0xe35d78bcd54549d35feafa0f4794b72c7e9d215a218d48ab2213251924014b17,
            "Incorrect guess, please try again");
            _mint(msg.sender, 2 * 10 ** (decimals()-2)); 
    
            addressToAnswerTable[msg.sender][6] = true;
        }

    function answer7(string memory _guess) public {
                require(addressToAnswerTable[msg.sender][7] == false,
        "You already got your EM Coin!!!!");

        transfer(address(this), FEE * 10 **decimals());

        require(keccak256(abi.encodePacked(_guess)) == 0xe35d78bcd54549d35feafa0f4794b72c7e9d215a218d48ab2213251924014b17,
        "Incorrect guess, please try again");
        _mint(msg.sender, 2 * 10 ** (decimals()-2)); 

        addressToAnswerTable[msg.sender][7] = true;
    }

    function answer8(string memory _guess) public {
                require(addressToAnswerTable[msg.sender][8] == false,
        "You already got your EM Coin!!!!");

        transfer(address(this), FEE * 10 **decimals());

        require(keccak256(abi.encodePacked(_guess)) == 0xe35d78bcd54549d35feafa0f4794b72c7e9d215a218d48ab2213251924014b17,
        "Incorrect guess, please try again");
        _mint(msg.sender, 2 * 10 ** (decimals()-2)); 

        addressToAnswerTable[msg.sender][8] = true;
    }

    function answer9(string memory _guess) public {
                require(addressToAnswerTable[msg.sender][9] == false,
        "You already got your EM Coin!!!!");

        transfer(address(this), FEE * 10 **decimals());

        require(keccak256(abi.encodePacked(_guess)) == 0xe35d78bcd54549d35feafa0f4794b72c7e9d215a218d48ab2213251924014b17,
        "Incorrect guess, please try again");
        _mint(msg.sender, 2 * 10 ** (decimals()-2)); 

        addressToAnswerTable[msg.sender][9] = true;
    }

    function answer10(string memory _guess) public {
                require(addressToAnswerTable[msg.sender][10] == false,
        "You already got your EM Coin!!!!");

        transfer(address(this), FEE * 10 **decimals());

        require(keccak256(abi.encodePacked(_guess)) == 0xe35d78bcd54549d35feafa0f4794b72c7e9d215a218d48ab2213251924014b17,
        "Incorrect guess, please try again");
        _mint(msg.sender, 2 * 10 ** (decimals()-2)); 

        addressToAnswerTable[msg.sender][10] = true;
    }

}