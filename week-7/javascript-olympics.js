  // JavaScript Olympics

// I paired with John Pohill on this challenge.

// This challenge took me 1.5 hours.


// Warm Up
var athletes = [
new Athlete("Beyonce","Single Ladies"),
new Athlete("Sarah Hughes", "Ladies' Singles"),
new Athlete("Nickle Back", "Quarter Back"),
];

// Bulk Up
function bulkUp(athletes) {

  for (var i = 0; i < athletes.length; i++) {
    athletes[i].win = function() {
      console.log(this.name + " has won " + this.sport + "!");
    };
  }
}


// Jumble your words
function reverse(string) {
  return string.split('').reverse().join('');
}


// 2,4,6,8
function onlyEven(numbers) {
  return numbers.filter(function(num) {
    return (num % 2 === 0);            
  });
}

// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
//What JavaScript knowledge did you solidify in this challenge?
// I gained more familiarity with how "this" works, but I'm still learning

//What are constructor functions?
//They create a prototype of an instance's object

//How are constructors different from Ruby classes (in your research)?
//In Ruby an object "inherits" it's properties from a higher class. In JavaScript, properties are inherited via a construtor function. The function gives the new object all of the properties from the instance it was created.