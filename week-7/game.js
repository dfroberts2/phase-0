// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Guess word
// Goals:Guess a correct letter in string
// Characters: n/a
// Objects: String, guessed string
// Functions: Pick a new word, guess a letter, display Number of strikes Left

// Pseudocode
// CREATE new function randomWord
//		CREATE array of 99 random words
// 		CREATE random number between 0 and 98
//		SAMPLE one word from random words and assign to 
// 
// 


// Initial Code

//"unsigned","himeros","undemocratically","albumenised","distemper","helsa","unswollen","doorbell","unmoderated","impressure","inlier","chiroptera","spermiogenesis","jeffries","marzipan","outgrin","nonautonomous","stabling","methylheptenone","positivistic","strophical","perissodactylous","uncardinally","scombroid","gunboat","chesstree","regerminating","caddying","doweling","constellation","maledictory","somatologist","feasibility","nonascendancy","dorsad","unbending","nonmineral","sandakan","biflex","alphabetize","circumspective","verdancy","dom","nonpregnant","remaster","duit","nondiscernment","whatever","overdebate","nondiscoverable","bereaver","michelangelo","brooksville","turbocharger","maulers","quapledging","spittle","potted","needless","guelphism","redcurrant","rhymester","disreputable","zigzagged","classicism","caseinogen","flicflac","strozzi","unslagged","plos","unfountained","encke","southland","flush","jogger","blotted","nonfavored","spade","repraised","farseer","styliser","spermatophyte","recollectively","titter","headland","sal","untropical","winfield","trivalent","incudes","overclog","hireable","gismo","denitrified","bowler","rms","synapse","gamebag","itineraries",

function randomWord() {
	var words = ["unsigned","himeros","undemocratically","albumenised","distemper","helsa","unswollen","doorbell","unmoderated","impressure","inlier","chiroptera","spermiogenesis","jeffries","marzipan","outgrin","nonautonomous","stabling","methylheptenone","positivistic","strophical","perissodactylous","uncardinally","scombroid","gunboat","chesstree","regerminating","caddying","doweling","constellation","maledictory","somatologist","feasibility","nonascendancy","dorsad","unbending","nonmineral","sandakan","biflex","alphabetize","circumspective","verdancy","dom","nonpregnant","remaster","duit","nondiscernment","whatever","overdebate","nondiscoverable","bereaver","michelangelo","brooksville","turbocharger","maulers","quapledging","spittle","potted","needless","guelphism","redcurrant","rhymester","disreputable","zigzagged","classicism","caseinogen","flicflac","strozzi","unslagged","plos","unfountained","encke","southland","flush","jogger","blotted","nonfavored","spade","repraised","farseer","styliser","spermatophyte","recollectively","titter","headland","sal","untropical","winfield","trivalent","incudes","overclog","hireable","gismo","denitrified","bowler","rms","synapse","gamebag","itineraries"];
	var number = Math.floor((Math.random() * 98) + 0);
	return words[number];
}

function display(word) {
	var displayWord = "";
	for (var i = 0; i < word.length; i++) {
		displayWord = "X" + displayWord;
	};
	return displayWord;
};

function guess(letter,word) {
	return word.search(letter) > -1;
}

function removeGuess(word,display,guess){
	var wordArray = word.split();
}




var random = randomWord();
var display = display(random);
var guess = guess("e",random);

console.log(random);
console.log(display);
console.log(guess);




// Refactored Code






// Reflection
//
//
//
//
//
//
//
//