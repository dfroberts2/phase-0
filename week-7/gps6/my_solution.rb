#Start My Solution
# Virus Predictor

#Names: David Roberts and Alexander Blair
#Guide: Caroline Artz

#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census


# EXPLANATION OF require_relative
#
#What Require Relative Does:
#Looks for file using Relative Path from Current Directory of Working File
#
#How does Require Relative work?
#Require Relative accesses an external FILE through a relative path
#
#Difference between Require Relative and Require?
#Require is generally used for adding external code not included by default in Ruby from a specified path, while Require Relative adds files only.
#
#State Data Analysis
#What is going on with this hash?
#1 Hash
#
#What does it have in it?
#
#Each Key = State Name
#Each Value = Another Hash
#  Population Density = Key and Population = Value
#
#I refer to this giant hash as a "hashy hash;" why do you think that is?
#Because it is a Nested Hash
#Syntax: Having the dual types of syntax allows for stylistic preference and visual identity
#Guide Help: The colon style always calls the same symbol with a different value given its parent.
#Symbols are data types requires their own memory, while the string syntax allows for spelling flexibility. The symbol method allows for any naming, while string.
#Symbols are inflexible and immutable, thus are efficient for lookup, while strings using the rocket syntax.
#
#What kind of variable is "STATE_DATA", and what's its scope?
#STATE_DATA is a Constant
#  If a Constant is changed, a warning will show, but will still be changed.
#  This is more relevant in other programming languages where constant rules are more rigid.
#Scope: Global, cannot be defined in a method
#
require_relative 'state_data'


class VirusPredictor
  #What does this method do?
  #First requred method in a newly defined Class.
  #Creates instance variables for use throughout the Class.
  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #What does this method do?
  #Calls "predicted_deaths" and "speed_of_spread" methods with required input

  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  private

  #what is the purpose of private
  #To hide methods from external access. It does this to set the availability of public methods. See: encapsulation, access-control and maintability
  #Encapsulation:
  #Access Control:
  #Maintainable Code:
  
  
  #What does this method do? 
  #Based on "@population_density", "populaton", and "state" will calculate a number of deaths - "number_of_deaths" and return nil
  #Prints string to console using returned "number_of_deaths" within
  
#   def predicted_deaths
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end
  #Refactored
  def predicted_deaths
    case @population_density
    when 0..50
      factor = 0.05
    when 51..100
      factor = 0.1
    when 101..150
      factor = 0.2
    when 151..200 
      factor = 0.3
    else
      factor = 0.4
    end
    number_of_deaths = (@population * factor).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  #What does this method do?
  #Based on "@populaton_density" and "state", "speed_of_spread" will be calculated and puts to console, returning nil
  
#   def speed_of_spread
#     #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end
  
  #Refactored
  def speed_of_spread
    case @population_density
    when 0..50
      speed = 2.5
    when 51..100
      speed = 2
    when 101..150
      speed = 1.5
    when 151..200 
      speed = 1
    else
      speed = 0.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, state_information|
  VirusPredictor.new(state, state_information[:population_density], state_information[:population]).virus_effects
end

#=======================================================================
# Reflection Section
#What are the differences between the two different hash syntaxes shown in the state_data file?
#One syntax allows for symbol use (the colon syntax) which is more efficient for memory look-up. The other does not allow for it (rocket syntax)

#What does require_relative do? How is it different from require?
#Require is generally used for adding external code not included by default in Ruby (this could be classes, modules or other objects), while Require Relative adds files only (usually custom made files).

#What are some ways to iterate through a hash?
#We used the .each method to iterate through the hash and display a printout for each state efficiently

#When refactoring virus_effects, what stood out to you about the variables, if anything?
#No variables were required to be passed along to the method or the methods that virus_effects calls b/c they only use instance variables

#What concept did you most solidify in this challenge?
#Understanding what private means and a more fuller understanding of how require works.