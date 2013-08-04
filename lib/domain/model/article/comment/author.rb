class Author

  MIN_LENGTH = 3
  MAX_LENGTH = 10

  def initialize(name)
    raise InvalidName.new(name) if invalid_name?(name)
    @name = name
  end

  def invalid_name?(name)
    name.length < MIN_LENGTH or name.length > MAX_LENGTH 
  end

  def to_s
    @name
  end
end

class InvalidName < Exception
  def initialize(name)
    super("Invalid name '#{name}'")
  end
end