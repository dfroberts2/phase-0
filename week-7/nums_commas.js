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
//What was your process for breaking the problem down? What different approaches did you consider?
//We reflected on how we approached the problem last time and tried to lay it out the logic in a similar fashion without directly copying our Ruby solution. Since we decided to reverse the number and put in a comma every 3 digits, we would need a reverse function. This is easily available if the object is an array so we considered converting it to an array, but decided this would be inefficient. Instead we wrote a reverse function that applies to strings.

//Was your pseudocode effective in helping you build a successful initial solution?
//Yes. We wrote very detailed pseudocode that almost worked perfectly when we converted it into actual code. There were a few bugs, but it mostly worked out the first time.

//What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
//Since we reversed the string twice, we wrote a function within the code that reverses an inputted string. This saved us line-space.

//How did you initially iterate through the data structure?
//We used a for loop that went from index = 0 to the end of the string

//Do you feel your refactored solution is more readable than your initial solution? Why?
//Yes, it is a bit shorter, and easier to understand b/c it involves less loops to read through.