const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("test", (m) => {
  const DSA = m.contractAt("DSA", "0x5fbdb2315678afecb367f032d93f642f64180aa3");

  const salam = m.call(DSA, "salam");
  console.log(salam);
});

