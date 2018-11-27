class Machine
  attr_accessor :expr

  def initialize(expr)
    @expr = expr
  end

  def step
    self.expr = expr.reduce
  end

  def run
    while expr.reducible?
      puts expr
      step
    end
    puts expr
  end
end
