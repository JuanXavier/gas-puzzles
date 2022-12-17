// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract OptimizedArraySum {
    uint256[] array;

    function setArray(uint256[] memory _array) external {
        if (_array.length > 10) revert();
        array = _array;
    }

    function getArraySum() external view returns (uint256 sum) {
        for (uint256 i; i < array.length; ++i) {
            sum += array[i];
        }
        return sum;
    }
}
