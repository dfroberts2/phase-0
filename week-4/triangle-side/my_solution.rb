# I worked on this challenge with Paul Gaston Gouron.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a <= 0 || b <= 0 || c<= 0
  	return false
  elsif a == b && b ==c
  	return true
  elsif a + b > c && b + c > a && a + c > b
  	return true
  else
  	return false
  end
end