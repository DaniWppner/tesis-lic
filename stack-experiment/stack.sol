//SPDX-License-Identifier: Unlicense
pragma solidity ^0.5.17;

contract SizedStack {
    uint256 public size;
    uint256 public maxSize;
    uint256[] internal_arr;

    constructor() public {
        maxSize = 10;
        size = 0;
    }

    function isEmpty() public view returns (bool) {
        return size == 0;
    }

    function top() public view returns (uint256) {
        require(!isEmpty());
        return internal_arr[size - 1];
    }

    function push(uint256 new_elem) public {
        require(size < maxSize);
        internal_arr.push(new_elem);
        size += 1;
    }

    function pop() public returns (uint256) {
        require(!isEmpty());
        uint256 was = top();
        internal_arr.pop();
        return was;
    }
}
