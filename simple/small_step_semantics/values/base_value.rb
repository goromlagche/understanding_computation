class BaseValue < Base
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def to_s
    value.to_s
  end

  def reducible?
    false
  end
end
