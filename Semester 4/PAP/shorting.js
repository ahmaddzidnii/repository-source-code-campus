function sortFloatArray(arr) {
  let n = arr.length;

  for (let i = 0; i < n - 1; i++) {
    let minIndex = i;

    // Cari index dengan nilai terkecil dari i hingga akhir array
    for (let j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }

    // Tukar elemen arr[i] dengan arr[minIndex] jika perlu
    if (minIndex !== i) {
      let temp = arr[i];
      arr[i] = arr[minIndex];
      arr[minIndex] = temp;
    }
  }

  return arr;
}

// Contoh penggunaan:
let floatNumbers = [3.02, 1.25, 1.75, 0.97, 2.39, 0.56];
let sortedNumbers = sortFloatArray(floatNumbers);

console.log(sortedNumbers);
