class Machine
  attr_accessor :expr, :env

  def initialize(expr, env)
    @expr = expr
    @env = env
  end

  def step
    self.expr = expr.reduce(env)
  end

  def run
    while expr.reducible?
      puts expr
      step
    end
    puts expr
  end
end
