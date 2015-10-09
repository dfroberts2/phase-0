# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
=begin

# What is the input?
a positive integer

# What is the output? (i.e. What should the code return?)
a string that is a modified integer (has commas every 3 places starting from the right)

# What are the steps needed to solve the problem?
convert integer to string
calculate length of string
if length is less than 4, return string
if length/3 remainder is 1
	insert comma at every 3 length, starting at 1(while i < length, insert)
if lenght/3 remainder is 2
	insert comma at ever 3 length, starting at 2 (while i < length, insert)
if length/3 remainder is 0
	insert comma aat every 3 length, starting at 3(while i < length, insert)
return string

=end



# 1. Initial Solution
=begin
def separate_comma(num)
	num = num.to_s
	nlength =-1 + num.length * -1
	if num.length < 4
		return num
	else
		i = -4
		while i > nlength
			num = num.insert(i,",")
			i += -4
			nlength += -1
		end
		return num
	end
end

=end






# 2. Refactored Solution
def separate_comma(num)
	num = num.to_s
	if num.length < 4
		return num
	else
		num = num.reverse.gsub(/(.{3})/, '\1,').reverse
		if num[0] == ","
			num[0] = ""
		end
		return num
	end
end




# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?
At first, I treated the numbers like 1000, 10000 and 100000 differently since I thought I would be working from left to right and they have different comma starting points. I came up with a solution for each case, but this proved to be difficult. Using a while loop was a good approach b/c I could keep inserting commas for the length of the entire string. 

Was your pseudocode effective in helping you build a successful initial solution?
I saw that the approach I had in my psedocode involved a lot of while loops. So I switched my approach from inserting the comma starting from the left of the string, to starting from the right, using negative indices. This condensed the code and made it easier to understand

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
I used the reverse and gsub methods to more simply add a comma to the string every 3 characters. I had to reverse it since the commas are grouped every 3 places, starting from the right. However, this resulted in an extra comma at the beginning if the number was in the "hundreds" (one hundred million, one hundred thousand, one hundred billion etc.). So I had to remove the extra comma in this case. The solution is a little shorter in code length, but I think it's easier to understand my initial solution.

How did you initially iterate through the data structure?
I used a while loop to iterate through the data. I compared an integer, i, to the length of the string (or negative length since I was working backwards). This integer was the place where the comma would be inserted and I would add (or negatively add b/c of working backwards) 4 to it, until it exceeded the length of the string. After this, the loop would end.

Do you feel your refactored solution is more readable than your initial solution? Why?
It's shorter, but I feel my initial solution is easier for me to understand. But I probably just need more practice with the new Ruby methods and I'm sure I'll feel comfortable with the second one.

=end