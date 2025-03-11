const n = 2;

for (let i = 0; i < n + 1; i++) {
  console.log(`put a red square at (${i},${i})`);
  console.log(`put a red square at (${i},${i + 1})`);
}

if (n % 2 === 0) {
  console.log(`put a green square at (${n + 1},${n + 1})`);
}
