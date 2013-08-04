class Content
  
  MIN_LENGTH = 3
  MAX_LENGTH = 3000

  def initialize(content)
    raise InvalidContent.new if invalid_content?(content)
    @content = content
  end

  def invalid_content?(content)
    content.length < MIN_LENGTH or content.length > MAX_LENGTH 
  end

  def to_s
    @content
  end
end

class InvalidContent < Exception
end