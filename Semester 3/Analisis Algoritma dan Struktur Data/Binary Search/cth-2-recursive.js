function binarySearch(arr, target, left = 0, right = arr.length - 1) {
  if (left > right) {
    return -1;
  }

  const middle = Math.floor((left + right) / 2);

  if (arr[middle] === target) {
    return middle;
  }

  if (arr[middle] < target) {
    return binarySearch(arr, target, middle + 1, right);
  } else {
    return binarySearch(arr, target, left, middle - 1);
  }
}

const arr = [1, 2, 3, 4, 5];
const target = 8;

console.log(binarySearch(arr, target));
