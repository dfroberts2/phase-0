

=begin
# 0. Pseudocode
Input: array of names
Output: A hash with group numbers as the keys and an array of names as the values
Steps:
For condtions where # of names/5 has a remainder of 1-4 do:
	Remainder = 1
		Set up 2 groups of 3 and remaining groups are of 5
	Remainder = 2
		Set up 2 groups of 3 and 4, respectively and remaining groups are of 5
	Remainder = 3
		Set up 2 groups of 4 and remaining groups are of 5
	Remainder = 4
		Set up 1 group of 4 and remaining groups are of 5




=end

# 1. Initial Solution

=begin
def group_names(names)

  names = names.shuffle
  acct_groups = {}
  i = 1

  if names.length % 5 == 0
    group_num = names.length/5

    while i <= group_num
      acct_groups[i] = names.slice!(0..4)
      i += 1
    end

  elsif names.length % 5 == 1
    group_num = names.length/5 +  1  

    while i < 3
      acct_groups[i] = names.slice!(0..2)
      i += 1
    end

    while i < group_num && i > 2
      acct_groups[i] = names.slice!(0..4)
      i += 1
    end

  elsif names.length % 5 == 2
    group_num = names.length/5 +  1  

    while i == 1
      acct_groups[i] = names.slice!(0..3)
      i += 1
    end

    while i == 2
      acct_groups[i] = names.slice!(0..2)
      i += 1
    end

    while i < group_num && i > 2
      acct_groups[i] = names.slice!(0..4)
      i += 1
    end

  elsif names.length % 5 == 3
    group_num = names.length/5 +  1  

    while i < 3
      acct_groups[i] = names.slice!(0..3)
      i += 1
    end

    while i < group_num && i > 2
      acct_groups[i] = names.slice!(0..4)
      i += 1
    end

  elsif names.length % 5 == 4
    group_num = names.length/5 +  1

    while i == 1
      acct_groups[i] = names.slice!(0..3)
      i += 1
    end

    while i < group_num && i > 1
      acct_groups[i] = names.slice!(0..4)
      i += 1
    end
  end
  for j in 1..group_num
   	puts "Accountability Group #{j} is #{acct_groups.fetch(j)}"
   end
end

copperheads = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jeffrey George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]

group_names(copperheads)

=end

# 3. Refactored Solution
def group_names(names)

# Sets up variables
  names = names.shuffle
  acct_groups = []
  group_num = (names.length/5.0).ceil - 1

  # Initially sorts group members into groups of 5
  for i in 0..group_num
    acct_groups[i] = names.slice!(0..4)
  end
  
  # Correct groups that have less than 4 members
  if acct_groups[group_num].length == 1
    acct_groups[group_num] = acct_groups[group_num].concat(acct_groups[group_num-1].slice!(3,4))
  elsif acct_groups[group_num].length == 2
    acct_groups[group_num] = acct_groups[group_num].concat([acct_groups[group_num-1].slice!(4)])
  elsif acct_groups[group_num].length == 3
    acct_groups[group_num] = acct_groups[group_num].concat([acct_groups[group_num-1].slice!(4)])
  end
  
  # Prints Groups
  for j in 0..group_num
   	puts "Accountability Group #{j+1} is #{acct_groups[j]}"
   end  
  
end


copperheads = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jeffrey George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]

group_names(copperheads)



# 4. Reflection
=begin

What was the most interesting and most difficult part of this challenge?
My initial and refactored solutions followed very different logic so it was interesting how many ways this problem could be attacked. I think the most difficult part was accounting for all the cases where the group numbers wasn't evenly divisible by 5. In my initial solution, I used while loops to account for this and it took up a lot of space in my code.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
My pseudocode gives me an idea of how I want to code my program, but I end up having to change strategies if I hit a wall. Or the pseudocode may look simple, but it is actually inefficent when converting into real code (my initial solution).

Was your approach for automating this task a good solution? What could have made it even better?
My code adequately sets up random groups of no less than 3 and no greater than 5

What data structure did you decide to store the accountability groups in and why?
My initial solution used a hash, but I found in my refactored solution, I only need an array since each index acted as a group number

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I used the .slice! method to remove a group of names from the initial list and place them in a new array. The ! made sure to remove the names from the name list. This was useful so that I didn't repeat any names in any one of the groups.

=end