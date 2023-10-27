require("@nomicfoundation/hardhat-toolbox")
require("@nomicfoundation/hardhat-ignition")
require("dotenv").config()



module.exports = {
    solidity: "0.8.21",

    
    networks: {
        hardhat: {
            chainId: 31337,
        },
        // sepolia: {
        //     url: SEPOLIA_RPC_URL,
        //     accounts: [PRIVATE_KEY],
        //     chainId: 11155111,
        //     blockConfirmations: 6,
        // },
    },
}
