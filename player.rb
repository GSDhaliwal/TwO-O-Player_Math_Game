class Player

  attr_accessor :name, :lives

  def initialize(n)
    self.name = n
    self.lives = 3
  end

  def wrong
    self.lives -= 1
  end

end    

