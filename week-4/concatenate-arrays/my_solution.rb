# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
i=0
array_3=[]
  array_1.each do |x|
  	array_3[i]=x
  	i+=1  	
  end
  array_2.each do |x|
  	array_3[i]=x
  	i+=1
  end
  return array_3
end