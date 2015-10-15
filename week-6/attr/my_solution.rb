#Attr Methods

# I worked on this challenge by myself

# I spent 1 hour on this challenge.

class NameData
	attr_accessor :name
	def initialize
		@name="David"
	end

end

class Greetings
	def initialize
		@Name=NameData.new
	end
	def hello
		puts "Hello #{@Name.name}! How wonderful to see you today."
	end
end

greeting = Greetings.new
puts greeting.hello

=begin
# Reflection
Release 1:
What are these methods doing?
initialize is setting the instance variables age, name and occupation to specific values. print_info can be called to print these three instance variables. what_is_age what_is_name and what_is_occupation print only the age, name and occupation respectively. change_my_age change_my_name and change_my_occupation set the instance variable to new inputted local variables.

How are they modifying or returning the value of instance variables?
In initialize, the instance variable are defined with specific values. Later, the values are replaced with the change_my_* methods. The print_info and the what_is_* methods print the instance variables.

Release 2:
What changed between the last release and this release?
attr_reader for the attribute age was added to the code.

What was replaced?
The what_is_age method is replaced by the attr_reader

Is this code simpler than the last?
yes. there is no need to write new methods that just display an object instance's attributes. attr_reader simplifies this.

Release 3:
What changed between the last release and this release?
attr_writer for the attribute age was added to the code

What was replaced?
The change_my_age method is replaced by the attr_writer

Is this code simpler than the last?
Yes. There is no need to write new methods that just change an object instance's attributes. attr_writer simplifies this.

Final reflection:
What is a reader method?
It allows variable to be displayed and accessed for reading use only

What is a writer method?
It allows a variable to be overwritten with a new value.

What do the attr methods do for you?
They allow class instance's attributes to be accessed.

Should you always use an accessor to cover your bases? Why or Why not?
If you don't want an attribute to be modified ever, you should only use a reader instead of a writer.

What is confusing to you about these methods
Syntax and using the : for symbols can be confusing at times.

=end