# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent 1.5 hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode

#methods:
#initialize

#display
# => shows count and order of flavors in dispenser

#take

#add



# Initial Solution
=begin
  def initialize(flavors)
    @slots=flavors
    
  end

  def pez_count()
    @slots.length
  end
  
  def see_all_pez
    @slots
  end
  
  def add_pez(flavor)
    @slots.unshift(flavor)
  end
  
  def get_pez
    get = @slots.slice!(0)
  end
=end





# Refactored Solution
class PezDispenser
attr_accessor :see_all_pez

 def initialize(flavors)
    @see_all_pez=flavors 
  end

  def pez_count()
    @see_all_pez.length
  end
  
  def add_pez(flavor)
    @see_all_pez.unshift(flavor)
  end
  
  def get_pez
    get = @see_all_pez.slice!(0)
  end
end





# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection