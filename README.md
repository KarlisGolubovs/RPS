# Rock-Paper-Scissors (and more!) Game

This is a simple command-line based Rock-Paper-Scissors game, with additional choices for "Lizard" and "Spock." You will be playing against computer players who have unique names and personalities.

## Rules

The game follows the traditional Rock-Paper-Scissors rules, with the addition of "Lizard" and "Spock":

- Rock crushes Scissors and crushes Lizard
- Paper covers Rock and disproves Spock
- Scissors cut Paper and decapitates Lizard
- Lizard eats Paper and poisons Spock
- Spock smashes Scissors and vaporizes Rock

## How to Play

1. Enter the number of computer players you want to compete against (1 to 9).
2. Enter the number of rounds you wish to play (1 to 5).
3. During each round, you will be prompted to enter your choice: Rock, Paper, Scissors, Lizard, or Spock.
4. The computer players will make their choices randomly.
5. The round winner will be determined based on the choices made, and the result will be displayed.
6. The game will continue for the specified number of rounds against each computer player.
7. After all rounds are played, the final score will be displayed, showing the number of wins for both you and the computer players.
8. If you manage to defeat all the computer players, you will be declared the overall winner. Otherwise, the computer will win the game.

## Example Usage

```bash
$ git clone https://github.com/your-username/rock-paper-scissors.git
$ cd rock-paper-scissors
$ ruby rock_paper_scissors.rb

Enter the number of computer players (1 to 9): 3
Enter the number of rounds (1 to 5): 3

Playing against Spockinator:

Round 1
Enter your choice (Rock/Paper/Scissors/Lizard/Spock): Rock
You chose: rock
Computer chose: scissors
You win!

Round 2
Enter your choice (Rock/Paper/Scissors/Lizard/Spock): Paper
You chose: paper
Computer chose: rock
You win!

Round 3
Enter your choice (Rock/Paper/Scissors/Lizard/Spock): Scissors
You chose: scissors
Computer chose: spock
Computer wins!

Final Score:
You: 2 wins
Computer: 1 wins
Congratulations! You defeated all the computer players!
