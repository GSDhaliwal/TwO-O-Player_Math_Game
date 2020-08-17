class Questions

  def initialize
    @first = rand(1..20)
    @second = rand(1..20)
  end

  def question
    "what does #{@first} plus #{@second} equal?"
  end
  
  def answer
    @first + @second  
  end

end
