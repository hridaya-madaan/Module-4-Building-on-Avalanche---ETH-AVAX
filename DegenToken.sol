// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;//Specifies that the contract is licensed under the MIT License.

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
//Imports the ERC20 and Ownable contracts from the OpenZeppelin library. 

contract DegenToken is ERC20, Ownable {//Declares the contract named DegenToken that inherits from both ERC20 and Ownable.
    string[] public redeemableItems;
//Defines the constructor which takes initialOwner as an argument.

//It initializes the ERC20 contract with the name “Aryan Vishwakarma” and the symbol “AR”,
    constructor(address initialOwner) ERC20("Aryan Vishwakarma", "AR") Ownable(initialOwner) {
        redeemableItems.push("Item 1");
        redeemableItems.push("Item 2");
        redeemableItems.push("Item 3");
        redeemableItems.push("Item 4");

        //Adds four items (“Item 1”, “Item 2”, “Item 3”, and “Item 4”) to the redeemableItems array.

    }
//Defines a mint function that allows the contract owner to create new tokens and assign them to a specified address
    function mint(address to, uint256 value) public onlyOwner {
        require(to != address(0), "Invalid address");
        require(value > 0, "Invalid value");

        _mint(to, value);
        emit Mint(to, value);
    }
//Overrides the ERC20 transfer function to add custom checks:
    function transfer(address to, uint256 value) public override returns (bool) {
        require(to != address(0), "Invalid address");
        require(value > 0, "Invalid value");

        return super.transfer(to, value);
    }
//Defines a redeem function that allows users to exchange tokens for items
    function redeem(uint256 itemId, uint256 cost) public {
        require(itemId < redeemableItems.length, "Item does not exist");
        require(bytes(redeemableItems[itemId]).length > 0, "Item does not exist");
        require(balanceOf(msg.sender) >= cost, "Insufficient balance");

        _burn(msg.sender, cost);
        emit Redeem(msg.sender, itemId, redeemableItems[itemId], cost);
    }
//Defines a burn function that allows users to destroy their own tokens:

    function burn(uint256 value) public {
        require(value > 0, "Invalid value");
        require(value <= balanceOf(msg.sender), "Insufficient balance");

        _burn(msg.sender, value);
        emit Burn(msg.sender, value);
    }
//Defines an addRedeemableItem function that allows the contract owner to add new items:
    function addRedeemableItem(string memory itemName) public onlyOwner {
        redeemableItems.push(itemName);
        emit ItemAdded(redeemableItems.length - 1, itemName);
    }
//Defines a removeRedeemableItem function that allows the contract owner to remove items:
    function removeRedeemableItem(uint256 itemId) public onlyOwner {
        require(itemId < redeemableItems.length, "Item does not exist");
        
        redeemableItems[itemId] = redeemableItems[redeemableItems.length - 1];
        redeemableItems.pop();
        
        emit ItemRemoved(itemId);
    }
//Defines events to be emitted for logging various operations:
    event Mint(address indexed to, uint256 value);// Emitted when tokens are minted.
    event Redeem(address indexed from, uint256 indexed itemId, string itemName, uint256 cost);
    //Emitted when tokens are redeemed for an item.
    event Burn(address indexed from, uint256 value);//Emitted when tokens are burned.
    event ItemAdded(uint256 indexed itemId, string itemName);//Emitted when a new item is added.
    event ItemRemoved(uint256 indexed itemId);//Emitted when an item is removed.
}
