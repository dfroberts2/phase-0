# Die Class 1: Numeric

# I worked on this challenge by mysel]

# I spent 1 hours on this challenge.

# 0. Pseudocode

# Steps:
# define class Die

# define initialize method
# set instance variable to inputted sides

# define sides method
# return sides instance variable

#define roll method
#generate random integer from 1 through sides


# 1. Initial Solution

class Die
  def initialize(sides)
  	if sides < 1
  		raise ArgumentError.new("No numbers less than 1, please")
  	end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution







# 4. Reflection