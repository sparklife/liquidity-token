// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.8.3;

import "../interfaces/IERC20.sol";

contract DoubleTransferHelper {

    IERC20 public immutable LIQUIDITY;

    constructor(IERC20 liquidity) public {
        LIQUIDITY = liquidity;
    }

    function doubleSend(address to, uint256 amount1, uint256 amount2) external {
        LIQUIDITY.transfer(to, amount1);
        LIQUIDITY.transfer(to, amount2);
    }
}