#Helper to check for victory, loss, and direction
def check_guess(guess, hidden_num, guesses)
	if guess == hidden_num
		puts "you WIN! It was indeed #{guess}!"
		exit
	elsif guesses == 3
		puts "YOU LOSE! It was actually #{hidden_num}."
	elsif guess > hidden_num
		puts "Go lower..."
	else
		puts "Go higher..."
	end
end

#Main Method
def play
	hidden_num = rand(1..10)

	puts "Thanks for playing Hi/Lo"
	puts "You have three guesses to find the randomized number between 1-10"

	num_guesses = 0

	while num_guesses < 3
		num_guesses += 1
		puts "For guess \##{num_guesses}"
		print "> "

		is_valid = false
		until is_valid
			puts "Make a guess:"
			print "> "
			guess = gets.chomp.to_i

			#make sure it's within range
			is_valid = true if (1..10).include?(guess)
		end
# 	 	guess = gets.chomp.to_i

		puts "Your guess was #{guess}"

		check_guess(guess, hidden_num, num_guesses)
	end	
end

#To run this code, 
play