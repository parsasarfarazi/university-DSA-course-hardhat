const { expect } = require("chai"); 
const { ethers } = require("hardhat"); 

describe("DSA", function () {
  let sortingContract;

  beforeEach(async () => {
    
    const DSA =  await ethers.getContractFactory("DSA");
    sortingContract = await  DSA.deploy();
    
  });

  it("should sort an array by bubble sort algorithm correctly", async function () {
    const unsortedArray = [2, 8, 1, 6, 7];
    const sortedArray = [1, 2, 6, 7, 8];

    const result = await sortingContract.bubbleSort(unsortedArray);
    const resultIntegers = result.map((item) => Number(item));
    expect(resultIntegers).to.deep.equal(sortedArray);
  });

  it("should return an empty array when sorting an empty array in bubble sort", async function (){
    const emptyArray = [];
    const resultBubble = await sortingContract.bubbleSort(emptyArray);
    expect(resultBubble).to.deep.equal([]);

  });

  it("should sort an array with duplicate values correctly in bubble sort", async function (){
    const dupArray = [5, 7, 5, 9, 6];
    const sortedDupArray = [5, 5, 6, 7, 9];

    const result = await sortingContract.bubbleSort(dupArray);
    const resultIntegers = result.map((item) => Number(item));
    expect(resultIntegers).to.deep.equal(sortedDupArray);

  });

  it("should sort an array by insertion sort algorithm correctly", async function (){
    const unsortedArray = [2, 8, 1, 6, 7];
    const sortedArray = [1, 2, 6, 7, 8];

    
    const result = await sortingContract.insertionSort(unsortedArray);
    const resultIntegers = result.map((item) => Number(item));
    expect(resultIntegers).to.deep.equal(sortedArray);

  });
  
  it("should return an empty array when sorting an empty array in insertion sort", async function (){
    const emptyArray = [];
    const resultInsertion = await sortingContract.insertionSort(emptyArray);
    expect(resultInsertion).to.deep.equal([]);

  });

  it("should sort an array with duplicate values correctly in insertion sort", async function (){
    const dupArray = [5, 7, 5, 9, 6];
    const sortedDupArray = [5, 5, 6, 7, 9];

    const result = await sortingContract.insertionSort(dupArray);
    const resultIntegers = result.map((item) => Number(item));
    expect(resultIntegers).to.deep.equal(sortedDupArray);

  });
  
  it("should sort an array by merge sort algorithm correctly", async function () {
    const unsortedArray = [2, 8, 1, 6, 7];
    const sortedArray = [1, 2, 6, 7, 8];

    const result = await sortingContract.bubbleSort(unsortedArray);
    const resultIntegers = result.map((item) => Number(item));
    expect(resultIntegers).to.deep.equal(sortedArray);
  });
  
});
