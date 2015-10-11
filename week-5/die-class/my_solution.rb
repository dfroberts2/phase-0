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
=begin
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
=end


# 3. Refactored Solution
class Die
  def initialize(sides)
  		raise ArgumentError.new("No numbers less than 1, please") if sides < 1
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end






# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An ArgumentError is generated if the input is the incorrect class or the incorrect number of argumenets is entered into the initialize method.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
Using Initialize was a new method I hadn't defined before. This is a special kind of method used when creating a new class. It needs to have instance variables defined with an @ sign.

What is a Ruby class?
A class is a group of objects that have similar variables and methods that work specifically with that group.

Why would you use a Ruby class?
If you wanted a group of variables to have the same property types or if you wanted them to be manipulated in the same way or display the same way.

What is the difference between a local variable and an instance variable?
A local variable is only defined within a method whereas an instance variable is attached to the class and all instances of that class have that variable. For example, all hashes have keys and values, which are instance variables. They never go away.

Where can an instance variable be used?
Anywhere within the clas definition
=end