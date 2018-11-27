class Operation < Base
  attr_accessor :left, :right

  def initialize(left, right)
    @left = left
    @right = right
  end

  def to_s
    "#{left} #{operation} #{right}"
  end

  def reducible?
    true
  end

  def reduce
    if left.reducible?
      self.class.new(left.reduce, right)
    elsif right.reducible?
      self.class.new(left, right.reduce)
    else
      value_type.new(left.value.send(operation, right.value))
    end
  end
end
