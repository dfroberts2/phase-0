=begin
Create List:
INPUT: none
OUTPUT: HASH
Steps:
define create_list with grocery list as input
CREATE new hash
RETURN hash
=end

def create_list()
  list = {}
  return list
end

=begin
Add item:
Input:
Output:
define method add_item(grocery_list)
create new key value pair and add to grocery list (key = item, qty = value)
return grocery_list
=end

def add(list)
  puts "add which item?"
  item=gets.chomp
  puts "how many"
  qty=gets.chomp
  list[item]=qty
  return list
end


=begin
Remove item:
input: hash
output: hash
define method remove_item(grocery_list)
puts "what item?"
item = user inputted item
delete item from list
return grocery_list
=end

def remove_item(grocery_list)
  puts "what item to remove?"
  item = gets.chomp
  grocery_list.delete(item)
  return grocery_list
end

######UPDATE QUANTITIES######
#Input: Hash
#Output: Hash
# Define method update_quant accepts grocery_list
# Specify which item and quantity to update by user input
# Take specified items and update quantity
# return grocery_list

def update_quant(grocery_list)
  puts "Which item would you like to update?"
  item = gets.chomp
  puts "How many do you want?"
  quantity = gets.chomp
  grocery_list[item] = quantity
  return grocery_list
end

######PRINT LIST############
#Input: Hash
#Output: Hash
## Iterate through grocery_list using .each
### Puts item and quantity for each iteration


def print_list(grocery_list)
  grocery_list.each { |k, v| puts "#{v.to_s} #{k}" }
end




#Begin Program
option = 0
while option < 6
puts "Pick an option number:"
puts "1. Create List"
puts "2. Add Item"
puts "3. Remove Item"
puts "4. Update item quantities"
puts "5. Print list"
puts "6. Exit"
option = gets.chomp.to_i

if option == 1
  list = create_list()
elsif option == 2
  list = add(list)
elsif option == 3
  list = remove_item(list)
elsif option == 4
  list = update_quant(list)
elsif option == 5
  list = print_list(list)
end 
end





