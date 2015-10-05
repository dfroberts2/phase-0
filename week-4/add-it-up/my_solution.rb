# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum
# Steps to solve the problem.

# for each element in array a do the following:
# add the element to a variable "sum"
# return the sum value

#def total(a)
#	sum = 0
#	a.each do |x|
#		sum = x + sum
#	end
#	return sum
#end


# 3. total refactored solution

def total(a)
	a.reduce(:+)
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: single string
# Steps to solve the problem.
# for each element in array a
# add the element to a variable "string" + space
# get rid of last extra space
# add period




# 5. sentence_maker initial solution
#def sentence_maker(a)
#	string = ""
#	a[0] = a[0].capitalize
#	a.each do |x|
#		x =  x.to_s
#		string = string + x + " "
#	end
#	string = string.chomp(" ")
#	string = string + "."
#	return string
#end



# 6. sentence_maker refactored solution
def sentence_maker(a)
	a[0] = a[0].capitalize
	string = a.join(" ")+"."
	return string
end

