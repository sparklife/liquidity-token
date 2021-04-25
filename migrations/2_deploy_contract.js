let liquidity = artifacts.require("../contracts/Liquidity.sol");

module.exports = async function(deployer) {
  await deployer.deploy(liquidity);
};
