// SPDX-License-Identifier: MIT
pragma solidity 0.8.37;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DOGORA is ERC20 {

    uint256 public constant TOTAL_SUPPLY =
        200_000_000_000_000 * 10 ** 18;

    uint256 public constant LP_ALLOCATION =
        20_000_000_000_000 * 10 ** 18;

    uint256 public constant RESERVE_ALLOCATION =
        170_000_000_000_000 * 10 ** 18;

    uint256 public constant MARKETING_ALLOCATION =
        10_000_000_000_000 * 10 ** 18;

    constructor(
        address lpWallet,
        address reserveWallet,
        address marketingWallet
    ) ERC20("DOGORA", "DOGA") {

        require(lpWallet != address(0), "Invalid LP wallet");
        require(reserveWallet != address(0), "Invalid reserve wallet");
        require(marketingWallet != address(0), "Invalid marketing wallet");

        _mint(lpWallet, LP_ALLOCATION);
        _mint(reserveWallet, RESERVE_ALLOCATION);
        _mint(marketingWallet, MARKETING_ALLOCATION);
    }
}
