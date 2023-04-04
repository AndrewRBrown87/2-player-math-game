class Game
  def initialize(player1, player2, turnMaster, quizMaster)
    @player1 = player1
    @player2 = player2
    @turnMaster = turnMaster
    @quizMaster = quizMaster
    @winner = false
  end

  def game_loop()
    while @winner == false do
      if @quizMaster.askQuestion?(@turnMaster.current_player.name) == false
        @turnMaster.current_player.lose_life

        if @turnMaster.current_player.lives == 0
          @winner = true
        end

      end

      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"

      @turnMaster.change_player()

      @quizMaster.newQuestion()

      if @winner == false
        puts "----- NEW TURN -----"
      else
        puts "#{@turnMaster.current_player.name} wins with a score of #{@turnMaster.current_player.lives}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
      end

    end
  end

end
