// SPDX-License-Identifier:MIT
pragma solidity 0.8.21;

contract DSA {
   
   uint public salam = 23;
   
    function bubbleSort(uint[] memory arr) public pure returns (uint[] memory) {
        bool flag = false;
        uint256 temp;
        uint256 length = arr.length;
        if(length == 0){
            return arr;
        }
        for (uint256 i = 0; i < length - 1; i++) {
            for (uint256 j = 0; j < length - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    temp = arr[j + 1];
                    arr[j + 1] = arr[j];
                    arr[j] = temp;
                    flag = true;
                }
            }
            if(!flag) {
                break;
            }
        
        }
        return arr;
    }

    function insertionSort(uint[] memory arr) public pure returns (uint[] memory) {
        uint256 n = arr.length;
        if(n == 0){
            return arr;
        }
        for (uint i = 0; i < n; i++) {
            uint256 key = arr[i];
            uint j = i;
            while (j > 0 && arr[j - 1] > key) {
                arr[j] = arr[j - 1];
                j--;
            }
            arr[j] = key;
        }
        return arr;
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
