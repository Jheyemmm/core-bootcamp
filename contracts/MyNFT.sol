// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721URIStorage {
    uint256 tokenId = 1;

    constructor() ERC721("SakaetMoBoss", "SMB") {}

    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "https://gist.githubusercontent.com/Jheyemmm/a5d4abe66578556c31900390792889cf/raw/96b5f8c2d718fab21f47555d3e2d1431b578afe3/metadata.json"
        );
        tokenId++;
    }
}