//PSEUDOCODE
//CREATE function checkCC with 1 input called num
//SPLIT num into array
//CREATE new array variable sumArray as empty array []
//FOR every digit starting at i=1, increasing i by 1
//	IF i mod 2 equals 0
//		PUSH ith value in array into sumArray 
//	ELSE
//		CREATE new variable doubledDigit equal to ith value in array times 2
//		IF doubledDigit is larger than 9
//			PUSH first digit into sumArray
//			PUSH second digit into sumArray
//		ELSE
//			PUSH doubledDigit into sumArray
//sum sumArray

//Solution:
function checkCC(num) {
	num = num.toString().split('').map(function(a){return parseInt(a)});
	var sumArray = [];
	for (var i = 0; i < num.length; i++) {
		if (i % 2 == 1) {
			sumArray.push(num[i]);
		} else {
			var doubledDigit = num[i] * 2;
			if (doubledDigit > 9) {
				sumArray.push(1);
				sumArray.push(doubledDigit % 10);
			} else {
				sumArray.push(doubledDigit);
			}
		}
	}
	var total = sumArray.reduce(function(a, b) {return a + b;});
	if (total % 10 == 0) {
		console.log("valid card!");
	} else {
		console.log("invalid card!");
	}
}

checkCC(4408041234567901);
checkCC(4408041234567906);


// What concepts did you solidify in working on this challenge? 
// Just using the JavaScript syntax. I feel very comfortable making simple control flow style programs in JavaScript.

// What was the most difficult part of this challenge?
// Coming up with a way to convert the CC number into an array that could be iterated through. I used the map function with the parseInt function to do this.

// Did you solve the problem in a new way this time?
// I didn't look at my Ruby solution so I believe I did. I pushed the digits and doubled digits into a new array that would later be summed. If the doubled digit was greater than 9, I pushed the two separate digits more simply than in my Ruby solution.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// Yes, I didn't create separate functions or methods to double and sum the digits. It was all within one simple function
//