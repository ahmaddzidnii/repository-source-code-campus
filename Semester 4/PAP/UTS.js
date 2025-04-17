/**
 * Generate the zig‑zag + color cycle pattern for a given N.
 * @param {number} N
 * @returns {Array<{ x: number, y: number, color: string }>}
 */
function generatePattern(N) {
  const colors = ['green', 'red', 'blue', 'red'];
  const totalSteps = 2 * (N + 1); // max k

  for (let k = 0; k <= totalSteps; k++) {
    const m = Math.floor(k / 2);
    const r = k % 2;

    // formula: x_k = N+1 - m - r,  y_k = m
    const x = N + 1 - m - r;
    const y = m;

    // cycle warna panjang 4
    const color = colors[k % 4];

    console.log(`Put a ${color} square at (${x},${y})`);
  }
}

generatePattern(4);
