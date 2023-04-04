class Turn
  attr_reader :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def change_player()
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

end