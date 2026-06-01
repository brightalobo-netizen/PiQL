 PiQL 🎨

Mint, Trade, and Earn with PiQL NFTs on Sepolia Testnet

PiQL is a full-stack Web3 NFT marketplace that lets creators mint unique NFTs with instant price discovery and community governance.

**Live Demo:** https://brightalobo-netizen.github.io/piql/piql-create.html

Features

| Feature | Description |
| --- | --- |
| **Mint NFTs** | Upload any image, set a price, mint to blockchain instantly |
| **Marketplace** | List, buy, and sell PiQL NFTs with 2.5% platform fee |
| **Community** | Vote on featured creators and trending collections |
| **On-Chain** | All NFTs + transactions stored on Sepolia testnet |
| **MetaMask** | Connect wallet, sign transactions, own your assets |

Smart Contract

**Network:** Sepolia Testnet 
**Contract Address:** `0x24c87B7F4b9b0A24C2E29BDc484F4bf54a6878f9` 
**Standard:** ERC721 + ERC721URIStorage 
**Mint Fee:** 0.001 ETH 
**Platform Fee:** 2.5%

Verified on Etherscan:** [View Contract](https://sepolia.etherscan.io/address/0x24c87B7F4b9b0A24C2E29BDc484F4bf54a6878f9)

Tech Stack

- **Frontend**: HTML5, TailwindCSS, JavaScript
- **Web3**: Ethers.js v6, MetaMask
- **Smart Contract**: Solidity 0.8.20, OpenZeppelin
- **Storage**: IPFS via web3.storage
- **Hosting**: GitHub Pages

Run Locally

1. **Clone the repo:**
```bash
git clone https://github.com/brightalobo-netizen/piql.git

PROJECT STRUCTURE
piql/
├── index.html # Landing page
├── piql-create.html # Minting dApp
├── piql-marketplace.html # Buy/sell NFTs
├── piql-community.html # Voting + trending
└── PiQLNFT.sol # Smart contract source

Roadmap
Deploy ERC721 contract to Sepolia
Launch minting dApp on GitHub Pages
 Add royalty splits for creators
 Mainnet launch on Polygon
 Mobile app for iOS/Android [x]
Creator
Built by brightalobo-netizen in Abuja, NG 🇳🇬

Follow the build: This repo was deployed from a laptop with a dead battery in 1 day.

License
MIT License - Build on it. Fork it. Make it yours.

Mint your first PiQL: https://brightalobo-netizen.github.io/piql/piql-create.html
