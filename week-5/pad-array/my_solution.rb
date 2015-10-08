# Pad an Array

# I worked on this challenge with Jay Yee

# I spent 1.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#1. an array
#2. a non negative integer
#3. an optional regiment that says what the array should be padded with
# What is the output? (i.e. What should the code return?)
#1. a padded array
=begin
What are the steps needed to solve the problem?
DEFINE an method pad that takes those 3 arguments (array, min_size, value = nil)
SET Difference = size of the array - the minimum size
  IF equal or greater
    RETURN the array as is
  ELSE
ADD as many index of values as needed to pad
RETURN the array
end

for each element index in the array do:
if element index is nil
set element equal to pad

non-destructive
final array = original array + difference array [size = difference, padding is value]

Array.new(3, true) #=> [true, true, true]

array.map { |var| var }


destructive
original array = original array + some stuff
=end

# 1. Initial Solution
def pad(array, min_size, value = nil) #non-destructive
  difference = min_size - array.length
  if difference <= 0
    final_array = array.map { |x| x }
    return final_array
  else
    diff_array = Array.new(difference, value)
    final_array = array + diff_array
    return final_array
  end
end

def pad!(array, min_size, value = nil) #destructive
  difference = min_size - array.length
  if difference <= 0 
    return array
  
  else
    #do something
    i = 0
    while i <= min_size
      if array[i] == nil
        array[i] = value
        i += 1
      else
        i += 1
      end
    end
  end
      
return array
  
end


# 3. Refactored Solution
def pad(array, min_size, value = nil) #non-destructive
  difference = min_size - array.length
  if difference <= 0
    array.map { |x| x }
  else
    diff_array = Array.new(difference, value)
    array + diff_array
  end
end



def pad!(array, min_size, value = nil) #destructive
  difference = min_size - array.length
  if difference <= 0 
    return array  
  else
    diff_array = Array.new(difference, value)
    array.concat(diff_array)
  end
end



# 4. Reflection
=begin

Were you successful in breaking the problem down into small steps?
We did a great job looking at each step (identifying the array's size, finding the difference, creating a new array, putting the two arrays together)

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Pseudocoding gave us an idea how are code was going to run. We had our logical statements already set in the right places.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our inital solution worked well, except in the non-destructive method, if the original array equal to or greater than the array, we had create a new array with the same contents of the original array, instead of setting a new array equal to the original array. The error occured because Rspec didn't think we were creating a non-destructive method.

When you refactored, did you find any existing methods in Ruby to clean up your code?
For the destructive method, we original used a while loop to check each individual element of the array and add on if the value was nil, until we got to the min size. In the refactored solution we just concatenated a new array to the original array which was much simpler.

How readable is your solution? Did you and your pair choose descriptive variable names?
The final refactored solution is very clear and easy to understand.

What is the difference between destructive and non-destructive methods in your own words?
The destructive method modifies the original array and returns it, while the non-destructive method leaves the original array and returns a new array. In the non-destructive method, you can access the original input.

=end