class Body

  MIN_LENGTH = 3
  MAX_LENGTH = 300

  def initialize(body)
    raise InvalidBody.new(body) if invalid_body?(body)
    @body = body
  end

  def invalid_body?(body)
    body.length < MIN_LENGTH or body.length > MAX_LENGTH 
  end

  def to_s
    @body
  end
end

class InvalidBody < Exception
  def initialize(body)
    super("Invalid body '#{body}'")
  end
end