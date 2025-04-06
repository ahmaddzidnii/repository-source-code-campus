function calc({ P1, P2, P3, n }) {
  const m = Math.floor(n / 2);

  // Calculate P3 - P1 - P2
  const temp = subtractBinary(P3, addBinary(P1, P2));

  // Calculate final result: P1 * 2^(2*m) + (P3 - P1 - P2) * 2^m + P2
  let result = P1 + "0".repeat(2 * m);
  result = addBinary(result, temp + "0".repeat(m));
  result = addBinary(result, P2);

  // Remove leading zeros from result
  return result.replace(/^0+/, "") || "0";
}

function addBinary(a, b) {
  let result = "";
  let carry = 0;

  // Ensure a and b have the same length
  const maxLength = Math.max(a.length, b.length);
  a = a.padStart(maxLength, "0");
  b = b.padStart(maxLength, "0");

  // Perform bit by bit addition from right to left
  for (let i = maxLength - 1; i >= 0; i--) {
    const bitA = a[i] === "1" ? 1 : 0;
    const bitB = b[i] === "1" ? 1 : 0;

    const sum = bitA + bitB + carry;
    result = (sum % 2) + result;
    carry = Math.floor(sum / 2);
  }

  // If there's still a carry, add it to the front of the result
  if (carry > 0) {
    result = "1" + result;
  }

  return result;
}

function subtractBinary(a, b) {
  // Ensure a >= b for subtraction
  if (a.length < b.length || (a.length === b.length && a < b)) {
    return "0"; // Special case for this algorithm (no need for negative results)
  }

  let result = "";
  let borrow = 0;

  // Ensure a and b have the same length
  const maxLength = Math.max(a.length, b.length);
  a = a.padStart(maxLength, "0");
  b = b.padStart(maxLength, "0");

  // Perform bit by bit subtraction from right to left
  for (let i = maxLength - 1; i >= 0; i--) {
    const bitA = a[i] === "1" ? 1 : 0;
    const bitB = b[i] === "1" ? 1 : 0;

    let diff = bitA - bitB - borrow;

    if (diff < 0) {
      diff += 2;
      borrow = 1;
    } else {
      borrow = 0;
    }

    result = diff + result;
  }

  // Remove leading zeros from result
  return result.replace(/^0+/, "") || "0";
}

console.log(calc({ P1: "1100011", P2: "1101110", P3: "110100100", n: 8 }));
