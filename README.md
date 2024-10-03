# ETH-AVAX-PROOF-Intermediate-EVM-Course__Module4

This report contains project assessment code for the ETH + AVAX PROOF course under metacrafter.


# MODULE 4 PROJECT

This Solidity program is a Module 4 Project program that demonstrates the basic syntax and functionality of the Solidity programming language and Javascript.
## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain .The purpose of this project is to create a ERC20 token and deploy it on the Avalanche network for Degen Gaming. The smart contract have the following functionality:
1. Minting new tokens: The platform was able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
2. Transferring tokens: Players was able to transfer their tokens to others.
3. Redeeming tokens: Players was able to redeem their tokens for items in the in-game store.
4. Checking token balance: Players was able to check their token balance at any time.
5. Burning tokens: Anyone was able to burn tokens, that they own, that are no longer needed.
   
This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing solidity program

To run only solidity program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a.sol extension (e.g., Degen Token.sol). Copy and paste the following code into the file --> [FileLink](https://github.com/ArYaN14138/ETH-AVAX-PROOF-Intermediate-EVM-Course__Module4.git)

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.26" (or another compatible version), and then click on the "Compile Degen Token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Mtoken - Degen Token.sol" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling all the functions. 

# To run the entire project you can use this steps:

You will want to do the following steps to run the project :-

1. First of all , install the metamask wallet on Browser.
2. Then follow the steps from this site https://docs.avax.network/build/dapp/smart-contracts/get-funds-faucet . On this site https://core.app/tools/testnet-faucet/?subnet=c&token=c choose Select Network as "Fuji (C-Chain)" , choose Select Token as "AVAX" , put Address as your metamask account address and get coupon code from this site https://guild.xyz/avalanche/avalanche-developers by passing requirements . Click on button "Add subnet to wallet" to add network to metamask and then click on button "Request 2 AVAX" to add Testnet AVAX native tokens to account .
3. Add all files on the remix.
4. Open "Degen Token.sol" file and in Solidity compiler section , drop-down Advanced Configurations and select EVM VERSION as "shanghai" and also tick the checkbox Enable optimization then click on the "Compile Degen Token.sol" button.
5. In DEPLOY & RUN TRANSACTIONS section , Select ENVIRONMENT as "Injected Provider - Metamask" and select the account in which you have Testnet AVAX native tokens . Select the "Mtoken - Degen Token.sol" contract from the dropdown menu, and then click on the "Deploy" button after passing the name and symbol of token. Then confirm the transaction from metamask and now your contract is deployed .
6. Once the contract is deployed, you can interact with it by calling all the functions and confirming all the transactions .
7. You can check all the transactions , Degen tokens and left Testnet AVAX native tokens to confirm transactions(Used as gas fee) on the following AVALANCHE Testnet site https://subnets-test.avax.network/  by putting the metamask account address in the searchbar of site. You can also use Snowtrace site https://testnet.snowtrace.io/ if it is working by putting the metamask account address in the searchbar of site.
8. Everything is Done , Our Project is completed.

## Project By
- ARYAN VISHWAKARMA
