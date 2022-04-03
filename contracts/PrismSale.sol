// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract PrismSale {
    uint256 public totalSales;
    uint256 public maxSales;

    address public owner;
    address public charity;

    constructor() {
        totalSales = 0;
        maxSales = 100;

        owner = 0x0702CBd5F006391CEFF3Dd6B22665ef3b4bBE826;
        charity = 0x4020260cAb475dC05Cd0772992a4022C59deFEF2;
    }

    function canBuy() public view returns (bool) {
        return totalSales < maxSales;
    }

    function buy() public returns (bool) {
        if (canBuy()) {
            totalSales++;
            return true;
        }

        return false;
    }
}
