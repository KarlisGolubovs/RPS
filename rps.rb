class RPSGame
    def initialize(num_computer_players, num_rounds)
      @choices = ["rock", "paper", "scissors", "lizard", "spock"]
      @num_computer_players = num_computer_players
      @num_rounds = num_rounds
      @computer_players = [
        { name: "Spockinator" },
        { name: "Rocky Balboa" },
        { name: "Paper Master" },
      ].take(num_computer_players)
    end
  
    def play_round(user_choice)
      computer_choice = @choices.sample
  
      puts "You chose: #{user_choice}"
      puts "Computer chose: #{computer_choice}"
  
      round_winner = get_round_winner(user_choice, computer_choice)
      puts round_winner
      round_winner
    end
  
    def get_round_winner(user_choice, computer_choice)
      rules = {
        "rock" => ["scissors", "lizard"],
        "paper" => ["rock", "spock"],
        "scissors" => ["paper", "lizard"],
        "lizard" => ["paper", "spock"],
        "spock" => ["rock", "scissors"]
      }
  
      if user_choice == computer_choice
        "It's a tie!"
      elsif rules[user_choice].include?(computer_choice)
        "You win!"
      else
        "Computer wins!"
      end
    end
  
    def get_computer_players
      @computer_players
    end
  
    def play_game
      user_wins = 0
      computer_wins = 0
  
      game_won_against_all_computers = true
  
      @computer_players.each do |player|
        puts "\nPlaying against #{player[:name]}:"
        @num_rounds.times do |round|
          puts "\nRound #{round + 1}"
          print "Enter your choice (Rock/Paper/Scissors/Lizard/Spock): "
          user_choice = gets.chomp.downcase
          until @choices.include?(user_choice)
            puts "Invalid choice. Please try again: "
            user_choice = gets.chomp.downcase
          end
  
          result = play_round(user_choice)
          if result == "You win!"
            user_wins += 1
          elsif result == "Computer wins!"
            computer_wins += 1
          end
        end
  
        if user_wins < computer_wins
          game_won_against_all_computers = false
          break
        end
  
        user_wins = 0
        computer_wins = 0
      end
  
      puts "\nFinal Score:"
      puts "You: #{user_wins} wins"
      puts "Computer: #{computer_wins} wins"
  
      if game_won_against_all_computers
        puts "Congratulations! You defeated all the computer players!"
      else
        puts "Computer wins the game. Better luck next time!"
      end
    end
  end
  
  # Main program
  print "Enter the number of computer players (1 to 9): "
  num_computer_players = gets.chomp.to_i
  num_computer_players = [1, [num_computer_players, 9].min].max
  
  print "Enter the number of rounds (1 to 5): "
  num_rounds = gets.chomp.to_i
  num_rounds = [1, [num_rounds, 5].min].max
  
  game = RPSGame.new(num_computer_players, num_rounds)
  game.play_game
  