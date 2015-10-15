# Your Names
# 1)David Roberts
# 2)Andrew Blum

# We spent 1 hour on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_people)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false

  serving_size = library.fetch(item_to_make)

  if num_people % serving_size == 0
    return "Calculations complete: Make #{num_people/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{(num_people.to_f/serving_size.to_f).ceil} of #{item_to_make}, you have #{serving_size - (num_people % serving_size)} leftover servings."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("pie",5)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
Less is more. We had trouble figuring out what the code was even supposed to do when first read it. We limited the number of logical

Did you learn any new methods? What did you learn about them?
We used .has_key? to avoid iterating through the array with .each method. It cut down the code length

What did you learn about accessing data in hashes? 
It is easy to access data in a hash! Nothing new, just solidified how to do it using methods like .fetch and .has_key?


What concepts were solidified when working through this challenge?
Refactoring for readability and simplicity


=end

