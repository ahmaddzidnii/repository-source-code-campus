function binarySearch(arr, target) {
  let left = 0;
  let right = arr.length - 1;

  while (left <= right) {
    const mid = Math.floor((left + right) / 2);

    if (arr[mid] === target) {
      return mid;
    }

    if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}

function linearSearch(arr, target) {
  for (let i = 0; i < arr.length; i++) {
    if (arr[i] === target) {
      return i;
    }
  }
  return -1;
}

const arr = [];
const target = 10000;

for (let i = 1; i <= 10000; i++) {
  arr.push(i);
}

// Binary Search
const startTime = performance.now();
const indexBinary = binarySearch(arr, target);
const endTime = performance.now();

if (indexBinary !== -1) {
  console.log(`Elemen yang dicari berada pada index ke-${indexBinary}`);
} else {
  console.log("Elemen tidak ditemukan");
}

console.log(`Time Binary Search: ${endTime - startTime} ms`);

// Linear Search
const startTimeLinear = performance.now();
const indexLinear = linearSearch(arr, target);
const endTimeLinear = performance.now();

if (indexLinear !== -1) {
  console.log(`Elemen yang dicari berada pada index ke-${indexLinear}`);
} else {
  console.log("Elemen tidak ditemukan");
}

console.log(`Time Linear Search: ${endTimeLinear - startTimeLinear} ms`);
