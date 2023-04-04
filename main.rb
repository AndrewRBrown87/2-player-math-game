=begin 

classes

game
  The game class contains the game loop.
  Initializes player 1 and player 2.
  Initializes turn tracking class.
  
  Has a method for running the game loop:
    Check who's turn it is.
    Generate a question.
    Ask the user the question.
    Get the answer.
    If wrong subtract a life from the user
    Check if someone has won the game

player
  The players class contains the player status.
  Initialized with a player number (1 or 2), and the number of lives (3 of 3).
  Method to reduced the number of lives is called when player answers incorrectly.

turn
  The turns class manages who the current player is.
  Initialized with the game players (1 and 2), and who the current player is.
  Method to get who the current player is.
  Method to switch who is the current player.

question
  Initialize two numbers between 1 and 20.
  Method to ask current player the question and get the user's answer
  Method to check if the user's answer is correct, returning true or false

=end

require './player'
require './question'
require './turn'
require './game'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

turnMaster = Turn.new(player1, player2)

quizMaster = Question.new()

newGame = Game.new(player1, player2, turnMaster, quizMaster)

newGame.game_loop()