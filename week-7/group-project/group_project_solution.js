//Stories:
// I want a program that takes a group of numbers and sums them all up
// I also want a program that takes that group of numbers and calculates their average
// Additionally, I want a program that finds the middle number of a group of numbers if they are ordered from least to greatest (aka the median)
// I want these programs to be able to work if I have an odd amount of numbers or an even amount



// I want a program that takes a group of numbers and sums them all up

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

// I want these programs to be able to work if I have an odd amount of numbers or an even amount


//Comment: Bruno, all of your code passed the tests, so good work! I couldn't do much to refactor sum and mean (just changing the function names so that they worked with the tests), but I refactored median so that it used the mean function when there was an even array of numbers and no single midpoint.


