#FUCK RECURSION
def rolling_dice(sides, num_rolls)
	sum = 0
	num_rolls.times do 
		random_side = rand(sides) + 1
		sum += random_side
	end
	puts sum
end

#rolling_dice(6, 10)

def dice_outcomes(sides, num_dies, num_rolls)
	total_outcomes = [] #array to be populated with the outcome of num_rolls rolls
	instances = {} #hash populated with values of # of instances for each possible roll
	num_outcomes = (sides * num_dies) - (num_dies - 1) #number of possible rolls  given # of dies and sides

	num_rolls.times do #loop the entirety of contents for # roll times
		outcome = 0 #reset outcome variable value
		num_dies.times do #sum the random # side each die lands on into outcome variable
			random_side = rand(sides) + 1
			outcome += random_side
		end
		total_outcomes << outcome #shovel the outcome of this roll into the array
	end

	i= (num_dies)
	num_outcomes.times do 
		print "#{i}: "
		total_outcomes.count(i).times do
			print "\#"
		end
		instances = {i => total_outcomes.count(i)}
		i+=1 
	end
end

#dice_outcomes(6, 3, 30)

#def fibonacci(num_members)
#	fibon_array = [1, 1, 2]
#	i = 2
#
#	if num_members == 1
#			fibon_array = [1]
#	elsif num_members == 2
#		else
#			while i <= (num_members - 1)
#				fibon_array << (fibon_array.fetch(i) + fibon_array.fetch(i-1))
#			end
#		end
#	puts fibon_array
#end

#fibonacci(6)
#instead, use x = 0, y =1, z = x+y, iterate setting x = old y, y = old z, z = new x + y

def stock_picker(stocks = [])
	if stocks.max > stocks.min 
		print [stocks.max, stocks.min]
	else
		#make duplicate array so that you can sort it without affecting this one, then check the difference between the second smallest and largest, vs the second largest and smallest value, then based on which is larger you know which elements you are looking for then you check if idex.max > index.min.

	end
end

def anagrams(word)
	#basically you read the word list and then sort all words that have the same number of letters as the word whose anagram you're looking for or some thing to make it easier to index thru
	#then you sort them all and then find all the matches/duplicates as well as their index numbers or w.e it is 
	#then you unsort? or reload the page and then print all of them out.
end