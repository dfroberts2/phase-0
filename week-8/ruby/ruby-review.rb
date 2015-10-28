# Reverse Words


# I worked on this challenge by myself.
# This challenge took me 0.5 hours.

# Pseudocode
# DEFINE method reverser with string as input
# 	SPLIT string into an array by words
# 	EACH array item in the array, REVERSE
# 	JOIN together array items


=begin
# Initial Solution
def reverse_words(string)
	string_array = string.split(" ")
	string_array.each {|x|x.reverse!}
	string_reverse = string_array.join(" ")
end
=end


# Refactored Solution
def reverse_words(string)
	string.split(" ").each {|x|x.reverse!}.join(" ")
end




=begin
# Reflection
What concepts did you review or learn in this challenge?
I practiced getting back into the "Ruby groove" after spending some time away from it. I learned how to get my mind thinking about a language I know after using a different language for a while.

What is still confusing to you about Ruby?
So far, I feel comfortable, but I still need to practice more.

What are you going to study to get more prepared for Phase 1
Practice more challenges and read up more on Ruby.

=end