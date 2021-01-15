const mDai = artifacts.require("mDai");
const MyDeFiProject = artifacts.require("MyDeFiProject");

const kovanDaiAddress = '0x4f96fe3b7a6cf9725f59d353f723c1bdb64ca6aa';
const kovanDaiAccount = '0x652db00cf5e206579af4c5a71fd2f1d1f776cf7b';

module.exports = async function (deployer, _network, accounts) {
  await deployer.deploy(mDai);
  const mdai = await mDai.deployed();
  await deployer.deploy(MyDeFiProject, mdai.address, kovanDaiAddress);
  const myDeFiProject = await MyDeFiProject.deployed();
  await mdai.faucet(myDeFiProject.address, 100);
  await myDeFiProject.transferMockDai(accounts[1], 100);
};
