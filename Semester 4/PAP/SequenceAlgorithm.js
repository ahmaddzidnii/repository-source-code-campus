function generateSequence(N) {
  let result = '';
  let current = -N * N;
  let step = 1;

  for (let i = 0; i < 3 * N; i++) {
    result += `${current} `;
    current += step;
    step += 2;
  }

  console.log(result);
}

const N = 6;
generateSequence(N);
