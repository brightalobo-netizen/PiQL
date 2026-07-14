# PiQL System Architecture

## 1. Overview
PiQL is a decentralized NFT marketplace built on Ethereum Sepolia testnet. It demonstrates hybrid Web3 + Web2 architecture: on-chain ownership with off-chain social features for performance and cost efficiency.

**Live Demo:** https://brightalobo-netizen.github.io/PiQL/  
**Smart Contract:** ERC-721 implementation on Sepolia  
**Status:** MVP Complete. Scaling to production.

## 2. System Design Principles
| Principle | Implementation |
| --- | --- |
| **Blockchain for Ownership** | NFT minting, transfers, and royalties handled by Solidity smart contract |
| **Off-Chain for UX** | User profiles, likes, search use traditional DB to avoid gas costs |
| **Progressive Decentralization** | Core assets on IPFS. Metadata cache in DB for speed |
| **Global + China Ready** | Dual deployment: Supabase for global, Tencent CloudBase for China |

## 3. Data Architecture

### 3.1 On-Chain Data (Source of Truth)
**Ethereum Sepolia Smart Contract**
- `tokenId => owner` mapping
- `tokenURI` → IPFS metadata hash
- `royalty` percentage for creators

**IPFS Storage**
- NFT images: `ipfs://Qm.../image.png`
- Metadata JSON: `ipfs://Qm.../metadata.json`
```json
{
  "name": "Rainbow Skull #001",
  "description": "1/1 art",
  "image": "ipfs://QmX...",
  "attributes": [{ "trait_type": "Color", "value": "Rainbow" }]
}
