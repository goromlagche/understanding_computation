class Variable < Base
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_s
    name.to_s
  end

  def reducible?
    true
  end

  def reduce(env)
    env[name]
  end
end
