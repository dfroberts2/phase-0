# Calculate the mode Pairing Challenge

# I worked on this challenge with: Bernadette Masciocchi

# I spent 2.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


=begin
# 0. Pseudocode

# What is the input?
an array of numbers
# What is the output? (i.e. What should the code return?)
an array of numbers --it is a subset of 
# What are the steps needed to solve the problem?
convert the array to a string
create a hash from the array where the key is the user numbers and the value is the count of each number
select the key/value pairs from the hash where the values are the max of the counts
convert the key/value pairs to an array by returning only the key

=end

# 1. Initial Solution
=begin
def mode(user_nums)
	user_nums.to_s
  	count = user_nums.map {|x|user_nums.count(x)}
  	freq = Hash[user_nums.map {|x| [x, user_nums.count(x)]}]
  	mode = freq.select {|k,v|v == count.max}
  	mode_array = mode.keys
	return mode_array
end

=end





# 3. Refactored Solution
def mode(user_nums)
	user_nums.to_s
  	count = user_nums.map {|x|user_nums.count(x)}
  	freq = Hash[user_nums.map {|x| [x, user_nums.count(x)]}]
  	mode = freq.select {|k,v|v == count.max}.keys
	return mode
end



# 4. Reflection

=begin

#Which data structure did you and your pair decide to implement and why?
A hash was the best way to approach this problem. This is because each number is paried with a count and it is easy to manipulate this object to obtain the pair that has the highest count

#Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
This was easier to break down into pseudocode, but it was harder to implement the pseudocode into real code b/c work with hashes is trickier and unfamiliar 

#What issues/successes did you run into when translating your pseudocode to code?
We needed to research new methods to complete the assignment. I did not previously have experience manipulating hashes and was unaware of the methods they use.

#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used the map method to take elements from the original array and map them into the hash. With map, you can define the keys and values. We wrote a code block that sets the values as the frequency of the keys. Our refactored solution cleaned up the code, but I think we used good methods in our initial solution.

=end
