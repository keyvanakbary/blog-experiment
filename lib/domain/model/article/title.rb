class Title

  MIN_LENGTH = 3
  MAX_LENGTH = 30

  def initialize(title)
    raise InvalidTitle.new(title) if invalid_title?(title)
    @title = title
  end

  def invalid_title?(title)
    title.length < MIN_LENGTH or title.length > MAX_LENGTH 
  end

  def to_s
    @title
  end
end

class InvalidTitle < Exception
  def initialize(title)
    super("Invalid title '#{title}'")
  end
end