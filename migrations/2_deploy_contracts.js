const mDai = artifacts.require("Dai");
const MyDeFiProject = artifacts.require("MyDeFiProject");

module.exports = async function (deployer, _network, accounts) {
  await deployer.deploy(mDai);
  const mdai = await mDai.deployed();
  await deployer.deploy(MyDeFiProject, mdai.address);
  const myDeFiProject = await MyDeFiProject.deployed();
  await mdai.faucet(myDeFiProject.address, 100);
  await myDeFiProject.transferMockDai(accounts[1], 100);
};
