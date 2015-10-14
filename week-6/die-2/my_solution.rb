# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution
=begin
class Die
  def initialize(labels)
  	raise ArgumentError.new("No empty lists please") if labels[0] == nil
  	@labels = labels
  end

  def sides
  	sides = @labels.length
  end

  def roll
  	@labels[rand(0..@labels.length-1)]
  end
end
=end



# Refactored Solution
class Die
  def initialize(labels)
  	raise ArgumentError.new("No empty lists please") if labels[0] == nil
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(0..@labels.length-1)]
  end
end







# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
There wasn't much logic change needed for this exercise. You just generated a random number that acted as an index for the array given. It involved a couple extra steps that involved the .length method.

What does this exercise teach you about making code that is easily changeable or modifiable? 
It is helpful to make code that isn't too specific to a certain task (if you can) so that it can be easily modified

What new methods did you learn when working on this challenge, if any?
No new methods were need for this exercise.

What concepts about classes were you able to solidify in this challenge?
Using instance variables was solidified during this challenge.

=end