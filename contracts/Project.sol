// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Identity {
    string Project;
    string Description;

    constructor() {
        Project = "NFT-Marketplace-with-Royalties";
        Description = unicode"An NFT Marketplace with Royalties is a decentralized platform that enables users to mint, buy, and sell digital assets while automatically rewarding creators with royalties on every resale. It ensures fair revenue sharing, transparent transactions, and long-term value for artists through smart contract automation.";
    }
    
    function showProject() public view returns (string memory) {
        return Project;
    }
    
    function showDescription() public view returns (string memory) {
        return Description; 
    }
}
