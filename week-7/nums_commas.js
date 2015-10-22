// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Steven Broderick.

// Pseudocode
// INPUT: a positive integer
// OUTPUT: a string (number with commas)

// DEFINE a function called separateComma that takes a single argument (integer called int)
//    ASSIGN a variable intString to string version of int
//    ASSIGN a variable rIntString to an empty string
//    FOR LOOP i = 0 through length of intString, incrementing by 1
//      SET rIntString equal to  index i of intString + rIntString
//    ASSIGN rCommaString to empty string
//    FOR LOOP i = 0 through length of rIntString, incrementing by 3
//      SET rCommaString equal to rCommaString + SLICE rIntString from index i to index i+2
//      IF length of rIntString minus i is greater than 1
//      SET rCommaString equal to rCommaString + ","
//    ASSIGN a variable commaString to an empty string
//    FOR LOOP i = 0 through length of rCommaString, incrementing by 1
//      SET commaString equal to index i of rCommaString + commaString
//    RETURN commaString


// Initial Solution

// var separateComma = function(int) {
//   var intString = String(int);
  
//   // reverse string
//   var rIntString = "";
//   for (var i = 0; i < intString.length; i++) {
//     rIntString = intString.charAt(i) + rIntString;
//   };  
  
//   // add commas
//   var rCommaString = "";
//   for (i = 0; i < rIntString.length; i += 3) {
//     rCommaString = rCommaString + rIntString.slice(i, (i+3));
//     if (rIntString.length - i > 3) {
//       rCommaString = rCommaString + ",";
//     };
//   }; 
  
//   // reverse again
//   var commaString = "";
//   for (i = 0; i < rCommaString.length; i++) {
//     commaString = rCommaString.charAt(i) + commaString;
//   };  
  
//   console.log(commaString);
// };

// separateComma(1)
// separateComma(12)
// separateComma(123)
// separateComma(1234)
// separateComma(12345)
// separateComma(123456)
// separateComma(1234567)
// separateComma(12345678)
// separateComma(123456789)


// Refactored Solution

var separateComma = function(int) {
  var intString = String(int);
  
  var reverseString = function(string) {
    var reversed = "";
    for (var i = 0; i < string.length; i++) {
      reversed = string.charAt(i) + reversed;
    }
    return reversed;
  }  
  
  // reverse string
  var rIntString = reverseString(intString);
  
  // add commas
  var rCommaString = "";
  for (var i = 0; i < rIntString.length; i += 3) {
    rCommaString = rCommaString + rIntString.slice(i, (i+3));
    if (rIntString.length - i > 3) {
      rCommaString = rCommaString + ",";
    };
  }; 
  
  // reverse again
  return reverseString(rCommaString);
};

separateComma(1)
separateComma(12)
separateComma(123)
separateComma(1234)
separateComma(12345)
separateComma(123456)
separateComma(1234567)
separateComma(12345678)
separateComma(123456789)


// Your Own Tests (OPTIONAL)
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert((separateComma(1) === "1"), "Should be 1", "1: ")
assert((separateComma(12) === "12"), "Should be 12", "2: ")
assert((separateComma(555) === "555"), "Should be 555", "3: ")
assert((separateComma(1000) === "1,000"), "Should be 1,000", "4: ")
assert((separateComma(10000) === "10,000"), "Should be 10,000", "5: ")
assert((separateComma(123123) === "123,123"), "Should be 123,123", "6: ")
assert((separateComma(999000999) === "999,000,999"), "Should be 999,000,999", "7: ")


// Reflection

//What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//The logic was similar to our Ruby solution, but we had to account for the differences in built-in methods. JavaScript doesn't have as many built-in methods.

//What did you learn about iterating over arrays in JavaScript?
//It's tricker when you don't know about enumerable methods in JavaScript. We had to iterate with a for loop.

//What was different about solving this problem in JavaScript?
//There was no built-in reverse method to use. We had to build it ourselves.

//What built-in methods did you find to incorporate in your refactored solution?
//We used the built-in slice method to our solution