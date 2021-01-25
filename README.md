# Project myDeFiProject using Dai & mockDai (deployed in Kovan)

[![built-with openzeppelin](https://img.shields.io/badge/built%20with-OpenZeppelin-3677FF)](https://docs.openzeppelin.com/)

## 1. About

This repository contains the project source code and dependencies required to deploy 2 smart contracts in Kovan test network implementing simple DeFi transactions based on Dai stable coin and a Mock Dai custom coin.

Kovan Dai stable coin used in this project is deployed at address [0x4f96fe3b7a6cf9725f59d353f723c1bdb64ca6aa](https://kovan.etherscan.io/token/0x4f96fe3b7a6cf9725f59d353f723c1bdb64ca6aa)

Connection to Kovan is stablished via <https://infura.io>

Smart Contract MyDeFiProject is deployed at address [0xb7e4f7bd0b2410b0b43e93ab4c5506e681292984](https://kovan.etherscan.io/address/0xb7e4f7bd0b2410b0b43e93ab4c5506e681292984)

## 2. Project features

- Deployment to Kovan network (via infura.io)
- Two coins are used in myDeFiProject:
        - customized 'Mock Dai' coin contract
        - existing 'Dai' coin deployed in Kovan
- Secrets and addresses handled by @truffle/hdwallet-provider
- Deployment of 'Mock Dai' smart contract (with faucet function)
- Deployment of myDeFiProject smart contract to handle transactions
- Integration of existing Dai stable coin in Kovan to myDeFiProject smart contract

## 3. Pre requisites

In order to deploy this project as detailed above, the following pre requisites are required:

- Available API project KEY from [infura.io](https://infura.io) on KOVAN endpoint
- Kovan Ether tokens *holder account* (may be requested via this faucet: <https://faucet.kovan.network/>)
- Kovan Dai Tokens *holder account* (Ether tokens obtained by faucet above may be converted to Dai via  <https://oasis.app/>)


## 4. Framework and dependencies

- Source code language: Solidity
- Development environment: Node.js / NPM / Truffle / DotEnv / Truffle-hdwallet
- Ethereum client: <https://infura.io>
- MetaMask Wallet

## 5. Usage

```bash
$ git clone https://github.com/alejoacosta74/myDai-DeFi-project.git myDai-DeFi-project
$ cd myDai-DeFi-project
$ npm install
$ truffle init
$ truffle compile
$ truffle migrate --network kovan
$ truffle console --network kovan
```
