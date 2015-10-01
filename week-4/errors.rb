# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#line 170
# 3. What is the type of error message?
#syntax
# 4. What additional information does the interpreter provide about this type of error?
#there is an unexpected end of input. The interpreter expects an "end"
# 5. Where is the error in the code?
#the error is in line 170 (or wherever the code ends)
# 6. Why did the interpreter give you this error?
#the while loop doesn't end and keeps going on and on infintely.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#line 35
# 2. What is the type of error message?
#a method or local variable is undefined
# 3. What additional information does the interpreter provide about this type of error?
#It is a name error
# 4. Where is the error in the code?
#the entire line
# 5. Why did the interpreter give you this error?
#south_park is either a method or local variable ant not defined properly. if it is method, it needs "def" and "end" if it is a local variable it needs an "=" and a value

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#50
# 2. What is the type of error message?
#a method is undefined
# 3. What additional information does the interpreter provide about this type of error?
#It is a no method error
# 4. Where is the error in the code?
#the entire line
# 5. Why did the interpreter give you this error?
#the method cartman is not definied properly. It needs "def" and "end"

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#65
# 2. What is the type of error message?
#arguement error
# 3. What additional information does the interpreter provide about this type of error?
#there was 1 argument when there should be 0
# 4. Where is the error in the code?
#cartmans_phrase
# 5. Why did the interpreter give you this error?
#'I hate Kyle' was given as the argument for the method cartmans_phrase when there shouldn't have been any argument

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#88
# 2. What is the type of error message?
#argument error
# 3. What additional information does the interpreter provide about this type of error?
#there were 0 arguments when there should've been 1
# 4. Where is the error in the code?
#cartman_says
# 5. Why did the interpreter give you this error?
#no argument was entered for cartman_says when there should've been one



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#105
# 2. What is the type of error message?
#argument error
# 3. What additional information does the interpreter provide about this type of error?
#there was 1 argument when there should've been 2
# 4. Where is the error in the code?
#cartmans_lie
# 5. Why did the interpreter give you this error?
#only one argument was entered for cartmans_lie when there should've been 2

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#124
# 2. What is the type of error message?
#This is a type error
# 3. What additional information does the interpreter provide about this type of error?
#The string cannot be coerced into a Fixnum. This means that the string couldn't be converted into a number
# 4. Where is the error in the code?
#The entire line
# 5. Why did the interpreter give you this error?
#5 cannot be multiplied by "Respect my authoritay" It makes no sense.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#139
# 2. What is the type of error message?
#Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
#none
# 4. Where is the error in the code?
#entire line
# 5. Why did the interpreter give you this error?
#Anything divided by 0 is undefined

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#155
# 2. What is the type of error message?
#Load error
# 3. What additional information does the interpreter provide about this type of error?
#the file location where the loaded file was supposed to be
# 4. Where is the error in the code?
#the entire line of code
# 5. Why did the interpreter give you this error?
#The interpreter expected the file "cartmans_essay.md" to be in the directory of the ruby file but it was not there.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
#The never ending while error was difficult to read. The error was located at line 170 since this is where the code ended, but the error was a result of the while loop not ending
#How did you figure out what the issue with the error was?
#I researched it and found out that since while is always true according to the code, it will never exit that part of the code (an infinite loop), so it must be ended with end
#Were you able to determine why each error message happened based on the code? 
#Yes, the error messages were sufficient for the most part.
#When you encounter errors in your future code, what process will you follow to help you debug?
#Located the line the error is in.