# Research Methods



i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select{|x| x =~ /[a-z]/ && x.include?(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
  source.select{|k, v| v == thing_to_find}.keys
end

# Identify and describe the Ruby method(s) you implemented.
#I used #select in order to pick out only the elements that met the specifications required in the block. Within the block I used match to see if an element matched alphabet characters and if so to check if the element contained what we needed to find using the method #include.
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! {|x| x.is_a?(Fixnum) ? x +=thing_to_modify : x}
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each {|k,v| source[k] = v + thing_to_modify}
end

# Identify and describe the Ruby method(s) you implemented.
#map! destructively iterated through each object and modified it in place.
#each iterated through the hash in order to set the "v" at source[k] to v += thing_to_modify.
#


# Person 3
def my_array_sorting_method(source)
  sorted_source = source.sort_by{|word|word.to_s}
end

def my_hash_sorting_method(source)
   sorted_source = source.sort_by{|pet,age|age}
end

# Identify and describe the Ruby method(s) you implemented.
#I used the sort_by method. This sorts an array or hash (or any enumerable) according to a specified block.
#In the first example, if all the values in the example array were converted to strings and sorted they would be in the right order. This is because numbers as strings have higher priority over capitalized strings, which have higher priority over lower case strings. For this reason I set my sort_by block to sort the array items(denoted as "word") AS IF they were strings, without actually modifying them (done by writing "word.to_s" in the codeblock.
#In the second example, I wanted to sort a hash by it's values (the ages). I did this by specifiying that the keys were called "pet" in the code block and the values were called "age." Then in the code block, I sorted by age.


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if {|x| x =~ /[a-z]/ && x.include?(thing_to_delete)}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if {|k, v| k == thing_to_delete}
end

# Identify and describe the Ruby method(s) you implemented.
#Ruby has a built in method #delete_if that allows you to remove an element based on a specified perameter passed in the code block. For the array I used match again with a regex to find strings and then if it include what needed to be deleted. For the hash I was able to just say #delete_if a key matches what we needed to delete.
#
#


# Person 5
def my_array_splitting_method(source)
  source.partition{ |x| x.is_a? Fixnum }
end

def my_hash_splitting_method(source, age)
  source.partition { |k,v| v <= 5 }
end

# Identify and describe the Ruby method(s) you implemented.
##partition was a new method for me. The way it works is that a code block is passed and if an element meets a requirement it is brought into a seperate array and the remaining elements ae grouped into an array of their own. The return is an array containing other arrays with the first array containing elements that passed the code block. Likewise it works with a hash as well by specifying what keys or values we want to partition by.
#
#


# Release 2: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#The methods I used included map and each. While map was much easier to use since it modified the array in place, hashes don't actually have a map method. For the Hash method I stuck to using an each loop where I used a code block to specify that each value should be incremented by 2.
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#The interesting part of this challenge was that while a particular challenge has it's own problems to solve, the fact that we were working with both arrays and hashes forced us to think outside of the box. A solution to a method with an array as input would need to be modified for a hash or sometimes use a different method all together.
#
#