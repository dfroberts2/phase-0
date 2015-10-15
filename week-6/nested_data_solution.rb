# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [ [1,2], ["inner", ["eagle", "par", ["FORE", "hook"] ] ] ]

# attempts:
# ============================================================
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
def array_incrementor(array)
  array.map do |array|  
    if array.is_a?(Integer)
      array+5
    else array.map do |array| 
       array+5
    end
  end
  end
end
p array_incrementor(number_array)


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def startup_name_generator(array)
  array.map do |array|    
  if array.is_a?(String)   
  array.concat("ly") 
  else #array.is_a?(Array)
  array.map do |firstlevel| 
    if firstlevel.is_a?(String)
    firstlevel.concat("ly")
    else firstlevel.is_a?(Array)
    firstlevel.map do |array| 
    array.concat("ly")
    end
  end
  end
  end
end
end
p startup_name_generator(startup_names)

=begin
#reflection
What are some general rules you can apply to nested arrays?
They act like normal arrays, but you have to specify additional indices to specify the exact data piece you want to work with

What are some ways you can iterate over nested arrays?
You can nest .each or .map methods through if statements that use the condition .is_a? to check for the type of data in the nested arrays

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
We reused .map and .is_a to iterate through the nested structures.

=end