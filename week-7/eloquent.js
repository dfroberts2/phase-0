// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var wacky = "This is a";
console.log(wacky + " sentence")




// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var count = 1;
while (count < 101) {
	if (count % 3 == 0 && count % 5 != 0) {
		console.log("fizz");
		count += 1;
	}
	else if (count % 5 == 0 && count % 3 != 0) {
		console.log("buzz");
		count += 1;
	}
	else {
		console.log(count)
		count += 1;
	}
}



// Functions

// Complete the `minimum` exercise.
var min = function(a,b) {
	if (a < b) {
		return a;
	}
	else if (b < a) {
		return b;
	}
};

console.log(min(3,-1));


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.