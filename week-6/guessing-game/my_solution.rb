# Build a simple guessing game


# I worked on this challenge by myself
# I spent 1 hour on this challenge.

# Pseudocode
=begin
# Input: initialize and guess will take single digit answers
# Output: answers: :high, :low, or :correct if the guess is
# Steps:
	DEFINE initialize method with answer as an inputted variable
		SET answer as instance variable
	DEFINE guess method with guess as an inputted variable
		SET guess as an instance variable
		RETURN :high if guess>answer
		RETURN :low if guess<answer
		RETURN :correct if guess 
	DEFINE solved method with no input
		RETURN true if answer = guess
		RETURN false if not

=end

=begin
# Initial Solution

class GuessingGame
  def initialize(answer)
  	@answer = answer
  end

  def guess(guess)
  	@guess = guess
  	return :high if guess > @answer
  	return :low if guess < @answer
  	return :correct if guess == @answer
  end

  def solved?()
  	if @answer == @guess
  		return true
  	else
  		return false
  	end
  end

end
=end




# Refactored Solution
class GuessingGame
  def initialize(answer)
  	@answer = answer
  end

  def guess(guess)
  	@guess = guess
  	:high if guess > @answer
  	:low if guess < @answer
  	:correct if guess == @answer
  end

  def solved?()
  	if @answer == @guess
  		return true
  	else
  		return false
  	end
  end

end




=begin
# Reflection
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Instance variables and methods stay defined within the class. They represent attributes and behaviors of objects since their value is not temporary.

When should you use instance variables? What do they do for you?
If you want to reuse a certain value (or other variable) within a certain class, you should set the instance variable equal to the value, or other variable.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
It was pretty straightforward. I used an if statement for each case

Why do you think this code reqires you to return symbols? What are the benefits of using symbols?
Symbols are good for checking object comparisons.

=end