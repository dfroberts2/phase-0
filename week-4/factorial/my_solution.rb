# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  if number == 0
  	return 1
  elsif number == 1
  	return 1
  end
  i=number-1
  f=number*i
  while i > 1
  	i=i-1
  	f=f*i
  end
  return f
end