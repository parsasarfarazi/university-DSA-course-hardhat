const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("initial", (m) => {
  const DSA = m.contract("DSA",[],{id:"DSA"});

  return { DSA };
});