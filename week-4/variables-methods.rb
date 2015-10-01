	puts 'What is your first name?'
	first_name = gets.chomp
	puts 'What is your middle name?'
	middle_name = gets.chomp
	puts 'What is your last name?'
	last_name = gets.chomp
	puts 'Hello ' + first_name + ' ' + middle_name + ' ' + last_name + '.'
	puts 'What is your favorite number?'
	favorite_num = gets.chomp
	new_num = favorite_num.to_i + 1
	puts 'Oh really? Well ' + new_num.to_s + ' is a bigger and better number.'