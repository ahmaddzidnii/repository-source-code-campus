function generatePattern(n) {
  const colorCycle = ['green', 'red', 'blue', 'red'];
  const maxIndex = 2 * (n + 1);

  for (let stepIndex = 0; stepIndex <= maxIndex; stepIndex++) {
    const moveCount = Math.floor(stepIndex / 2);
    const isOddStep = stepIndex % 2;

    const x = n + 1 - moveCount - isOddStep;
    const y = moveCount;

    const colorIndex = stepIndex % 4;
    const color = colorCycle[colorIndex];

    console.log(`Put a ${color} square at (${x},${y})`);
  }
}

generatePattern(3);
