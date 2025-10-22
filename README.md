# 🎨 NFT Marketplace with Royalties

## 🌐 Overview

**NFT Marketplace with Royalties** is a blockchain-based decentralized platform that enables creators to **mint, sell, and earn royalties** from their digital assets every time they are resold.
By integrating **smart contracts**, this platform ensures that **artists retain perpetual income rights**, promoting fairness and transparency in the NFT ecosystem.

---

## 🚀 Key Features

* 🖼️ **Mint NFTs** – Artists can easily tokenize digital artworks or collectibles.
* 💰 **Royalty Enforcement** – Built-in royalty mechanism ensures creators receive a percentage of every secondary sale.
* 🔗 **Decentralized Trading** – Buy and sell NFTs securely on-chain using crypto wallets.
* 🔍 **Ownership Transparency** – Every transaction and owner record is publicly verifiable.
* ⚡ **Gas-Efficient Transactions** – Optimized for scalability using Polygon / Layer-2 solutions.
* 🛡️ **Immutable Metadata Storage** – NFT metadata and assets stored via IPFS for data integrity.

---

## 🏗️ Tech Stack

| Layer                        | Technology                                    |
| ---------------------------- | --------------------------------------------- |
| **Blockchain**               | Ethereum / Polygon (Solidity Smart Contracts) |
| **Smart Contract Framework** | Hardhat / Truffle                             |
| **Frontend**                 | React.js / Next.js                            |
| **Backend**                  | Node.js / Express                             |
| **Storage**                  | IPFS / Pinata                                 |
| **Wallet Integration**       | MetaMask / WalletConnect                      |
| **Database (Optional)**      | MongoDB / Firebase                            |

---

## 🧩 Smart Contract Functionalities

* `mintNFT()` – Mint new NFTs with royalty configuration (e.g., 5–10%).
* `buyNFT()` – Buy listed NFTs from the marketplace.
* `resellNFT()` – Resell NFTs and trigger royalty distribution to the original creator.
* `setRoyaltyInfo()` – Define royalty percentage and receiver address.
* `getRoyaltyInfo()` – Fetch royalty details for any NFT.
* `withdrawFunds()` – Enable sellers to withdraw marketplace earnings.

---

## ⚙️ Installation & Setup

### 1️⃣ Clone the repository

```bash
git clone https://github.com/yourusername/NFT-Marketplace-with-Royalties.git
cd NFT-Marketplace-with-Royalties
```

### 2️⃣ Install dependencies

```bash
npm install
```

### 3️⃣ Configure environment variables

Create a `.env` file and include:

```
PRIVATE_KEY=your_wallet_private_key
INFURA_PROJECT_ID=your_infura_id
PINATA_API_KEY=your_pinata_key
PINATA_SECRET_API_KEY=your_pinata_secret
```

### 4️⃣ Compile & deploy contracts

```bash
npx hardhat compile
npx hardhat run scripts/deploy.js --network polygon
```

### 5️⃣ Start the frontend

```bash
npm run dev
```

---

## 🧠 Royalty Mechanism Explained

Each NFT minted includes royalty metadata stored in the smart contract.
During every secondary sale:

1. The **buyer** pays the sale amount to the contract.
2. The **contract automatically splits** the payment — sending a fixed percentage to the original creator and the rest to the seller.
3. The transaction is verified on-chain, ensuring full transparency and automation.

Example:

* Sale Price: 1 ETH
* Royalty: 10%
* Artist receives 0.1 ETH automatically, seller receives 0.9 ETH

---

## 🧩 Smart Contract Snippet

```solidity
function _transferWithRoyalty(
    address from,
    address to,
    uint256 tokenId,
    uint256 salePrice
) internal {
    (address receiver, uint256 royaltyAmount) = royaltyInfo(tokenId, salePrice);
    payable(receiver).transfer(royaltyAmount);
    payable(from).transfer(salePrice - royaltyAmount);
    _transfer(from, to, tokenId);
}
```

---

## 🔮 Future Enhancements

* 🎧 Multi-royalty support for collaborative artworks.
* 🪙 DAO-based governance for marketplace fee structures.
* 🌐 Multi-chain interoperability (Ethereum ↔ Polygon ↔ Solana).
* 📱 Mobile DApp integration for cross-platform accessibility.
* 🧠 AI-driven NFT pricing and recommendation engine.

---

## 🛡️ License

This project is licensed under the **MIT License** — see the [LICENSE](./LICENSE) file for details.

---

## 🤝 Contributing

Contributions, feature suggestions, and bug fixes are welcome!
Fork this repository, make your improvements, and submit a pull request.

---

## 📊 Vision Statement

> “Empowering creators through blockchain — where ownership, authenticity, and royalties never fade.”

---
