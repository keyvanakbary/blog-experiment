require 'application/slugifier'

class Article
  attr_reader :title, :content, :slug, :comments

  def initialize(title, content)
    @title = Title.new(title)
    @content = Content.new(content)
    @slug = Slugifier.slugify(title)
    @comments = []
  end

  def add_comment(author, body)
    @comments << Comment.new(author, body)
  end
end