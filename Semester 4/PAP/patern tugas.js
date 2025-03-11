const n = 1;

for (let i = 0; i <= n; i++) {
  console.log(`put a red square at (${i},${i})`);
  console.log(`put a red square at (${i},${i + 1})`);
}

if (n % 2 === 0) {
  console.log(`put a green square at (${n + 1},${n + 1})`);
} else {
 console.log(`put a blue square at (${n + 2},${n})`);
 console.log(`put a blue square at (${n + 2},${n + 2})`);
}
