let count = 0; // Inisialisasi counter untuk menghitung jumlah rekursi
/**
 * Fungsi untuk mengalikan dua bilangan biner menggunakan algoritma Karatsuba
 * @param {string} x - Bilangan biner pertama
 * @param {string} y - Bilangan biner kedua
 * @return {string} - Hasil perkalian dalam bentuk biner
 */
function multiply(x, y) {
  //   // Increment counter rekursi
  //   count++;
  //   console.log("Rekursi ke:", count);

  // Konversi input menjadi string untuk memastikan input biner
  x = x.toString();
  y = y.toString();

  // Hapus leading zeros
  x = x.replace(/^0+/, "") || "0";
  y = y.replace(/^0+/, "") || "0";

  // Base case: jika kedua angka hanya 1 bit
  if (x.length === 1 && y.length === 1) {
    return (parseInt(x, 2) * parseInt(y, 2)).toString(2);
  }

  // Menentukan n, ukuran maksimum dari x dan y
  const n = Math.max(x.length, y.length);

  // Pastikan panjang kedua bilangan sama dengan padding
  x = x.padStart(n, "0");
  y = y.padStart(n, "0");

  // Jika n adalah angka ganjil, tambahkan 1 untuk memudahkan pembagian
  const m = Math.ceil(n / 2);

  // Bagi x dan y menjadi bagian kiri (high) dan kanan (low)
  const xL = x.slice(0, x.length - m);
  const xR = x.slice(x.length - m);
  const yL = y.slice(0, y.length - m);
  const yR = y.slice(y.length - m);

  console.log({
    xL,
    xR,
    yL,
    yR,
    m,
    n,
  });

  // Hitung tiga perkalian rekursif yang diperlukan
  const P1 = multiply(xL || "0", yL || "0"); // Perkalian bagian kiri
  const P2 = multiply(xR, yR); // Perkalian bagian kanan

  // Hitung (xL + xR) * (yL + yR)
  const xSum = addBinary(xL || "0", xR);
  const ySum = addBinary(yL || "0", yR);
  const P3 = multiply(xSum, ySum);

  console.log({ P1, P2, P3 });

  // Hitung P3 - P1 - P2
  const temp = subtractBinary(P3, addBinary(P1, P2));

  // Hitung hasil akhir: P1 * 2^(2*m) + (P3 - P1 - P2) * 2^m + P2
  let result = P1.padEnd(P1.length + 2 * m, "0"); // P1 * 2^(2*m)
  result = addBinary(result, temp.padEnd(temp.length + m, "0")); // + (P3 - P1 - P2) * 2^m
  result = addBinary(result, P2); // + P2

  // Hapus leading zeros dari hasil
  return result.replace(/^0+/, "") || "0";
}

function addBinary(a, b) {
  let result = "";
  let carry = 0;

  // Pastikan a dan b memiliki panjang yang sama
  const maxLength = Math.max(a.length, b.length);
  a = a.padStart(maxLength, "0");
  b = b.padStart(maxLength, "0");

  // Lakukan penjumlahan bit per bit dari kanan ke kiri
  for (let i = maxLength - 1; i >= 0; i--) {
    const bitA = parseInt(a[i], 2);
    const bitB = parseInt(b[i], 2);

    const sum = bitA + bitB + carry;
    result = (sum % 2) + result;
    carry = Math.floor(sum / 2);
  }

  // Jika masih ada carry, tambahkan di depan hasil
  if (carry > 0) {
    result = "1" + result;
  }

  return result;
}

function subtractBinary(a, b) {
  // Pastikan a >= b untuk pengurangan
  if (a.length < b.length || (a.length === b.length && a < b)) {
    return "0"; // Kasus khusus untuk algoritma ini (tidak perlu hasil negatif)
  }

  let result = "";
  let borrow = 0;

  // Pastikan a dan b memiliki panjang yang sama
  const maxLength = Math.max(a.length, b.length);
  a = a.padStart(maxLength, "0");
  b = b.padStart(maxLength, "0");

  // Lakukan pengurangan bit per bit dari kanan ke kiri
  for (let i = maxLength - 1; i >= 0; i--) {
    const bitA = parseInt(a[i], 2);
    const bitB = parseInt(b[i], 2);

    let diff = bitA - bitB - borrow;

    if (diff < 0) {
      diff += 2;
      borrow = 1;
    } else {
      borrow = 0;
    }

    result = diff + result;
  }

  // Hapus leading zeros dari hasil
  return result.replace(/^0+/, "") || "0";
}

// Contoh penggunaan:
console.log(multiply("10011011", "10111010")); // Mengalikan 11 * 13 = 143 (dalam desimal) atau 10001111 (dalam biner)

// let count = 0; // Inisialisasi counter untuk menghitung jumlah rekursi

// function multiply(x, y) {
//   count++;
//   console.log(`\n=== Rekursi ke-${count} ===`);
//   console.log(`Mengalikan: ${x} * ${y}`);

//   x = x.toString().replace(/^0+/, "") || "0";
//   y = y.toString().replace(/^0+/, "") || "0";

//   if (x.length === 1 && y.length === 1) {
//     const result = (parseInt(x, 2) * parseInt(y, 2)).toString(2);
//     console.log(`Base case: ${x} * ${y} = ${result}`);
//     return result;
//   }

//   const n = Math.max(x.length, y.length);
//   const m = Math.ceil(n / 2);
//   x = x.padStart(n, "0");
//   y = y.padStart(n, "0");

//   const xL = x.slice(0, x.length - m);
//   const xR = x.slice(x.length - m);
//   const yL = y.slice(0, y.length - m);
//   const yR = y.slice(y.length - m);

//   console.log(`Memisahkan angka:
//   xL = ${xL}, xR = ${xR}
//   yL = ${yL}, yR = ${yR}
//   m = ${m}, n = ${n}`);

//   const P1 = multiply(xL || "0", yL || "0");
//   console.log(`P1 (xL * yL): ${P1}`);
//   const P2 = multiply(xR, yR);
//   console.log(`P2 (xR * yR): ${P2}`);

//   const xSum = addBinary(xL || "0", xR);
//   const ySum = addBinary(yL || "0", yR);
//   console.log(`Menjumlahkan bagian:
//   xSum = ${xSum}, ySum = ${ySum}`);
//   const P3 = multiply(xSum, ySum);
//   console.log(`P3 ((xL + xR) * (yL + yR)): ${P3}`);

//   const temp = subtractBinary(P3, addBinary(P1, P2));
//   console.log(`(P3 - P1 - P2): ${temp}`);

//   let result = P1.padEnd(P1.length + 2 * m, "0");
//   console.log(`P1 << ${2 * m}: ${result}`);
//   result = addBinary(result, temp.padEnd(temp.length + m, "0"));
//   console.log(`+ (P3 - P1 - P2) << ${m}: ${result}`);
//   result = addBinary(result, P2);
//   console.log(`+ P2: ${result}`);

//   console.log(`Hasil akhir rekursi ke-${count}: ${result}`);
//   return result.replace(/^0+/, "") || "0";
// }

// function addBinary(a, b) {
//   let result = "";
//   let carry = 0;
//   const maxLength = Math.max(a.length, b.length);
//   a = a.padStart(maxLength, "0");
//   b = b.padStart(maxLength, "0");

//   for (let i = maxLength - 1; i >= 0; i--) {
//     const sum = parseInt(a[i], 2) + parseInt(b[i], 2) + carry;
//     result = (sum % 2) + result;
//     carry = Math.floor(sum / 2);
//   }

//   if (carry > 0) {
//     result = "1" + result;
//   }

//   console.log(`Penjumlahan biner: ${a} + ${b} = ${result}`);
//   return result;
// }

// function subtractBinary(a, b) {
//   if (a.length < b.length || (a.length === b.length && a < b)) {
//     return "0";
//   }

//   let result = "";
//   let borrow = 0;
//   const maxLength = Math.max(a.length, b.length);
//   a = a.padStart(maxLength, "0");
//   b = b.padStart(maxLength, "0");

//   for (let i = maxLength - 1; i >= 0; i--) {
//     let diff = parseInt(a[i], 2) - parseInt(b[i], 2) - borrow;
//     if (diff < 0) {
//       diff += 2;
//       borrow = 1;
//     } else {
//       borrow = 0;
//     }
//     result = diff + result;
//   }

//   console.log(`Pengurangan biner: ${a} - ${b} = ${result}`);
//   return result.replace(/^0+/, "") || "0";
// }

// console.log(`Hasil akhir perkalian: ${multiply("10011011", "10111010")}`);
