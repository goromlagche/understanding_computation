class Base
  def to_s
    raise NotImplementedError
  end

  def inspect
    "<<#{self}>>"
  end

  def reducible?
    raise NotImplementedError
  end

  def reduce
    raise NotImplementedError if reducible?

    'Literal, not reducible'
  end
end
