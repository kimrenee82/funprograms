rockpaperscissors = ["r", "p", "s"]

puts "This is a game called, Rock Paper Scissors. To play a Rock, type R. To play Scissors, type S. To play Paper, type P. To Quit, type Q. Ready. Set. Go!"

my_play = gets.chomp.downcase

my_score = 0

computer_score = 0

until my_play == 'q' || computer_score == 5 || my_score == 5

	until my_play == 'r' || my_play == 'p' || my_play == 's' 

		puts "That is not a valid entry. Please try again."

		my_play = gets.chomp.downcase

	end

		rockpaperscissors = rockpaperscissors.shuffle!
	
		computer_play = rockpaperscissors[0]
	
	if my_play == computer_play

		puts "The computer played the same as you. No winner."

		elsif my_play == 's' && computer_play == 'p'

			puts "You win! The computer played Paper."

			my_score += 1

		elsif my_play == 'p' && computer_play == 'r'

			puts "You win! The computer played Rock."

			my_score += 1

		elsif my_play == 'r' && computer_play == 's'
			
			puts "You win! The computer played Scissors."

			my_score += 1

		elsif my_play == 's' && computer_play == 'r'

			puts "You lose! The computer played Rock."

			computer_score += 1

		elsif my_play == 'p' && computer_play == 's'

			puts "You lose! The computer played Scissors."

			computer_score += 1

		elsif my_play == 'r' && computer_play == 'p'
			
			puts "You lose! The computer played Paper."

			computer_score += 1

		elsif my_play == 'q'

			puts "Done? Ok. See you next time."
	end

	if my_play != 'q' && my_score !=5 && computer_score !=5

		puts "Current Score -- You: #{my_score} and Computer: #{computer_score}."
		puts "Rock (R). Paper (P). Scissors (S) or Quit (Q)."

		my_play = gets.chomp.downcase

	else

	end

end

puts "Thanks for playing! The final score is You: #{my_score} and Computer: #{computer_score}."

if my_score > computer_score

	puts "You beat the Computer!"

else
	puts "Sorry. The Computer beat you!"

end




