// SPDX-License-Identifier:MIT
pragma solidity 0.8.21;

contract DSA {
    uint256[] private _unsortedList;

    function getUnsortedList(uint256[] memory unsortedList) public {
        _unsortedList = unsortedList;
    }

    function bubbleSort() public {
        bool flag = true;
        for (uint i = 0; i < _unsortedList.length; i++) {
            for (uint j = 0; j < _unsortedList.length - j; j++) {
                if (_unsortedList[i] > _unsortedList[i + 1]) {
                    uint256 temp = _unsortedList[i + 1];
                    _unsortedList[i + 1] = _unsortedList[i];
                    _unsortedList[i] = temp;
                    flag = false;
                }
            }
            if (flag == true) {
                break;
            } else {
                flag == true;
            }
        }
    }

    function insertionSort() public {
        uint256 n = _unsortedList.length;
        for (uint i = 1; i <= n; i++) {
            uint256 key = _unsortedList[i];
            uint j = i;
            while (j > 1 && _unsortedList[j - 1] > key) {
                _unsortedList[j] = _unsortedList[j - 1];
                j--;
            }
            _unsortedList[j] = key;
        }
    }

    function mergeSort(uint[] memory arr) public pure returns (uint[] memory) {
        if (arr.length < 2) {
            return arr;
        }
        uint mid = uint(arr.length / 2);
        uint[] memory leftList = new uint[](mid);
        uint[] memory rightList = new uint[](arr.length - mid);
        for (uint i = 0; i < leftList.length; i++) {
            leftList[i] = arr[i];
        }
        for (uint i = 0; i < rightList.length; i++) {
            rightList[i] = arr[i + mid];
        }

        mergeSort(leftList);
        mergeSort(rightList);

        return merge(leftList, rightList);
    }

    function merge(
        uint[] memory left,
        uint[] memory right
    ) private pure returns (uint[] memory) {
        uint i = 0;
        uint j = 0;
        uint k = 0;
        uint[] memory sortedArr;

        while (i < left.length && j < right.length) {
            if (left[i] > right[j]) {
                sortedArr[k] = right[j];
                j++;
            } else {
                sortedArr[k] = left[i];
                i++;
            }
            k++;
        }
        while (i < left.length) {
            sortedArr[k] = left[i];
            i++;
            k++;
        }
        while (i < right.length) {
            sortedArr[k] = right[j];
            j++;
            k++;
        }
        return sortedArr;
    }
}