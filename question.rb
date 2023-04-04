class Question

  def initialize()
    @num1 = random0to20()
    @num2 = random0to20()
    @answer = @num1 + @num2
    @userAnswer = nil
  end

  def random0to20()
    rand(0..20)
  end

  def newQuestion()
    @num1 = random0to20()
    @num2 = random0to20()
    @answer = @num1 + @num2
    @userAnswer = nil
  end

  def askQuestion?(player)
    puts "#{player}: What does #{@num1} plus #{@num2} equal?"
    @userAnswer = gets.chomp.to_i
    if @userAnswer == @answer
      puts "#{player}: YES! You are correct. #{@userAnswer}"
      return true
    else
      puts "#{player}: Seriously? No! #{@userAnswer} is wrong! #{@answer} is correct!"
      return false
    end
  end

end