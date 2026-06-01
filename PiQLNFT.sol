// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PiQLNFT is ERC721, ERC721URIStorage, Ownable {
    uint256 private _nextTokenId;
    uint256 public mintFee = 0.001 ether; // Minting fee
    uint256 public platformFee = 250; // 2.5% = 250 basis points

    event NFTMinted(address indexed creator, uint256 indexed tokenId, string tokenURI, uint256 price);

    constructor(address initialOwner) ERC721("PiQL Creator NFT", "PIQL") Ownable(initialOwner) {}

    function mintNFT(address to, string memory uri, uint256 price) public payable returns (uint256) {
        require(msg.value >= mintFee, "Insufficient mint fee");
        
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);

        emit NFTMinted(to, tokenId, uri, price);
        return tokenId;
    }

    function setMintFee(uint256 _fee) public onlyOwner {
        mintFee = _fee;
    }

    function withdraw() public onlyOwner {
        payable(owner()).transfer(address(this).balance);
    }

    // Required overrides
    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721URIStorage) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}