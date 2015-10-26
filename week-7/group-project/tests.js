// Add the finished solution here when you receive it.

function sum(numGroup) {
  var total = 0;
  for (var x in numGroup) {
    total += numGroup[x];
  }
  return total;
}

console.log(sum([1,2,3,4,5,6,7,8,9]));

// I also want a program that takes that group of numbers and calculates their average

function mean(numGroup) {
  var total = 0;
  for (var x in numGroup) {
    total += numGroup[x];
  }
  return total / numGroup.length;
}

console.log(mean([1,2,3,4,5,6,7,8,9]));

// Additionally, I want a program that finds the middle number of a group of numbers if they are ordered from least to greatest (aka the median)

function median(numGroup) {
  var sorted = numGroup.sort();
  var midpoint = Math.floor(sorted.length / 2) - 1;
  if (sorted.length % 2 === 0) {
    return mean([sorted[midpoint], sorted[midpoint+1]]);
  } else {
    return sorted[midpoint + 1];
  }
}

console.log(median([7,4,5,6,8,5,3]));
console.log(median([3,4,6,7,3,4]));
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)