def make_choice(player_number)
	puts "Player #{player_number} - make your choice."
	choices = ['rock','scissors','paper']
	puts "0 - Rock"
	puts "1 - Scissors"
	puts "2 - Paper"
	choice = choices[gets.to_i]
	puts "---->Player #{player_number} chose #{choice}!"
	return choice
end

def find_winner(choice1,choice2)
	if(choice1 == choice2)
		"It's a tie"
	elsif(choice1 == 'rock' && choice2 == 'scissors' || choice1 == 'scissors' && choice2 == 'paper' || choice1 == 'paper' && choice2 == 'rock' )
		 'Player 1 wins.'
	else
		 'Player 2 wins.'
	end
end

player_choices = []
for x in 1..2
player_choices.push(make_choice(x))
end
p find_winner(player_choices[0],player_choices[1])


















