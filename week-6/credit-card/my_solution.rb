# Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself
# I spent 2 hours on this challenge.

# Pseudocode

# Input: Credit Card number
# Output:Boolean value
# Steps:
# => DEFINE initialize
#		SET each number in input CC number to instance variable array as string
#		RAISE argument error if array is not 16 in length
# => DEFINE double method
#		TARGET every other digit in array (starting on element 0) and double it(convert back to integer first)
# => DEFINE sum method
#		if instance variables as number are greater than 10
#		Add every other digit (starting on 2nd digit) to instance variables
# => Define check_card method
#       CALL double method
#       CALL sum method
#       IF @sum is divisible by 10, true. If not, false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin
class CreditCard
	def initialize(cc_number)
		@cc_number=cc_number.to_s.split('')
		raise ArgumentError.new("Pick a 16 digit number") if @cc_number.length != 16
	end

	def double
		@cc_number.map!.with_index do |x,i|
			if i % 2 == 0
				(x.to_i * 2)
			else
				x.to_i
			end
		end
	end

	def sum
		@cc_number.map!.with_index do |x,i|
			if i % 2 == 0
				if x == 10
					x = 1
				elsif x == 12
					x = 3
				elsif x == 14
					x = 5
				elsif x == 16
					x = 7
				elsif x == 18
					x = 9
				else
					x
				end
			else
				x
			end
		end
		@sum = @cc_number.reduce(:+)
	end

	def check_card
		double
		sum
		if @sum % 10 == 0
			true
		else
			false
		end
	end

end
=end



# Refactored Solution
class CreditCard
	def initialize(cc_number)
		@cc_number=cc_number.to_s.split('')
		raise ArgumentError.new("Pick a 16 digit number") if @cc_number.length != 16
	end

	def double
		@cc_number.map!.with_index do |x,i|
			if i % 2 == 0
				x.to_i * 2
			else
				x.to_i
			end
		end
	end

	def sum
		@cc_number.map!.with_index do |x,i|
      		if i % 2 == 0 && x > 9
          		x.to_s[0].to_i + x.to_s[1].to_i
      		else
        		x
      		end
    	end
    	@sum = @cc_number.reduce(:+)
  end

	def check_card
		double
		sum
		if @sum % 10 == 0
			true
		else
			false
		end
	end

end



=begin
# Reflection
What was the most difficult part of this challenge for you and your pair?
Figuring out how to attack the problem was the toughest part. In my pseudocode, I didn't convert the credit card number to an array. Only once I started coding, I found this to be the smart way to approach the problem.

What new methods did you find to help you when you refactored?
The .to_s method was useful in reducing the number of code lines I used to add the digits of the doubled numbers together. Although I used it in my initial solution, the .split method, a method I had no previous experience with, was useful to convert the long credit card number into an array where each digit was a separate element. I had to be careful though, b/c I had to convert it to a string before splitting it up.

What concepts or learnings were you able to solidify in this challenge?
I feel very comfortable using the .map method after this challenge.

=end