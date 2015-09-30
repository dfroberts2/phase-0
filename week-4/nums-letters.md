#4.2 Numbers, Letters, and Variable Names

##What does "puts" do?
In Ruby, "Puts" outputs (or prints) a specified number, letter or variable and adds a line-break after it.

##What is an integer? What is a float?
An integer is a whole number like 1, 4 or 1000. A float contains decimals and is not a whole number like. 4.5, 6.8 or 9.9999999999. Integers are usually used to describe things such as the number of iterations a program should run, the count of how many times a website or visited and other similar values. Events or items that cannot be broken up into smaller pieces.

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Integer division can only output an integer, so if an integer incompletely divides another integer, the least amount of times that integer can go into the other is outputted. For example, if you were to divide 3 by 2 in Ruby, the output 1 would be computed. A remainder of 1 would also be computed. Float division outputs another float so the exact decimal answer is calculated instead of a remainder.



```ruby
yearlyHours = 365 * 24
puts 'The number of yearly hours is '
puts yearlyHours
puts ''
decadeMinutes = 10 * 365 * 24 * 60
puts 'The number of minutes in a decade is'
puts decadeMinutes
```