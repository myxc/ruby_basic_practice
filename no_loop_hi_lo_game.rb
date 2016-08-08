hidden_num = rand(1..10)

puts "The rules are simple in this game of High/Low"
puts "You have three guesses to find a randomized number between 1-10"
puts "Make your first guess:"
print ">"

guess = gets.chomp.to_i

puts "your guess was #{guess}!"

if guess == hidden_num
	puts "you WIN! It was #{guess}"
	exit
elsif guess > hidden_num
		puts "Sorry, try guessing a smaller number next time!"
else
		puts "Sorry, try guessing a larger number next time!"
end

puts "Make your second guess:"
print ">"

guess = gets.chomp.to_i

puts "your guess was #{guess}!"

if guess == hidden_num
	puts "you WIN! It was #{guess}"
	exit
elsif guess > hidden_num
		puts "Sorry, try guessing a smaller number next time!"
else
		puts "Sorry, try guessing a larger number next time!"
end

puts "Make your final guess:"
print ">"

guess = gets.chomp.to_i

if guess == hidden_num
	puts "you WIN! It was #{guess}"
	exit
else 
	puts "you LOSE. It was actually #{hidden_num}!"
end

	