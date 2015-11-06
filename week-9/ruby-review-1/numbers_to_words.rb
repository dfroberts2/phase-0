#Pseudocode:
#Input: integer
#Output: printed string

#DEFINE method num_to_word(number)

#ASSIGN number_string as number converted to string
#ASSIGN ones to -1 index of number_string converted to integer
#ASSIGN tens to -2 index of number_string converted to integer


#ASSIGN ones_string as ""
#ASSIGN tens_string as ""
#CASE of ones
#IF ones is 1
#ASSIGN ones_string as "one"
#IF ones is 2
#ASSIGN ones_string as "two"
#etc until 9 is "nine"

#CASE of tens
#IF tens is 1
#ASSIGN tens_string as "teen"
#IF tens is 2
#ASSIGN tens_string as "twenty"
#etc until 9 is "ninety"

#IF number is greater than 10 and less than 20
# => PRINT ones_string and tens_string
#ELSEIF number is 100
# => PRINT "one-hundred"
#ELSEIF number is 0
# => PRINT "zero"
#ELSEIF number is 10
# => PRINT "ten"
#ELSE
# => PRINT tens_string and ones_string

#Solution:
def num_to_word(number)
	ones = number.to_s[-1].to_i
	tens = number.to_s[-2].to_i
	ones_string = ""
	tens_string = ""

	case ones
	when 1
		ones_string = "one"
		teens_string = "eleven"
	when 2
		ones_string = "two"
		teens_string = "twelve"
	when 3
		ones_string = "three"
		teens_string = "thirteen"
	when 4
		ones_string = "four"
		teens_string = "fourteen"
	when 5
		ones_string = "five"
		teens_string = "fifteen"
	when 6
		ones_string = "six"
		teens_string = "sixteen"
	when 7
		ones_string = "seven"
		teens_string = "seventeen"
	when 8
		ones_string = "eight"
		teens_string = "eighteen"
	when 9
		ones_string = "nine"
		teens_string = "nineteen"
	end

	case tens
	when 2
		tens_string = "twenty"
	when 3
		tens_string = "thirty"
	when 4
		tens_string = "fourty"
	when 5
		tens_string = "fifty"
	when 6
		tens_string = "sixty"
	when 7
		tens_string = "seventy"
	when 8
		tens_string = "eighty"
	when 9
		tens_string="ninety"
	end

	if number > 0 && number < 10
		puts ones_string	
	elsif number > 10 && number < 20
		puts teens_string	
	elsif number == 100
		puts "one hundred"
	elsif number == 10
		puts "ten"
	elsif number == 0
		puts "zero"
	else
		puts tens_string + " " + ones_string
	end
end

num_to_word(0)
num_to_word(9)
num_to_word(15)
num_to_word(34)
num_to_word(56)
num_to_word(99)
num_to_word(100)
