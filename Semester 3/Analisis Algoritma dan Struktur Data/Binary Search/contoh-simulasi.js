function binarySearch(arr, target) {
  let left = 0;
  let right = arr.length - 1;
  let iteration = 0;

  while (left <= right) {
    iteration++;
    const mid = Math.floor((left + right) / 2);

    if (arr[mid] === target) {
      return { index: mid, iteration };
    }

    if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return { index: -1, iteration };
}

function linearSearch(arr, target) {
  let iteration = 0;
  for (let i = 0; i < arr.length; i++) {
    iteration++;
    if (arr[i] === target) {
      return { index: i, iteration };
    }
  }
  return { index: -1, iteration };
}

const arr = [];
const target = 500;

for (let i = 1; i <= 1000; i++) {
  arr.push(i);
}

// Binary Search
const startTime = performance.now();
const indexBinary = binarySearch(arr, target);
const endTime = performance.now();

console.log(`Binary search membutuhkan ${indexBinary.iteration} iterasi`);

if (indexBinary.index !== -1) {
  console.log(`Elemen yang dicari berada pada index ke-${indexBinary.index}`);
} else {
  console.log("Elemen tidak ditemukan");
}
console.log(`Time Binary Search: ${endTime - startTime} ms`);

// Linear Search
const startTimeLinear = performance.now();
const indexLinear = linearSearch(arr, target);
const endTimeLinear = performance.now();

console.log(`Linear search membutuhkan ${indexLinear.iteration} iterasi`);
if (indexLinear.index !== -1) {
  console.log(`Elemen yang dicari berada pada index ke-${indexLinear.index}`);
} else {
  console.log("Elemen tidak ditemukan");
}
console.log(`Time Linear Search: ${endTimeLinear - startTimeLinear} ms`);
