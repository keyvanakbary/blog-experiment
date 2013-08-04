class ArticleBuilder

  IRRELEVANT_TITLE = 'Title'
  IRRELEVANT_CONTENT = 'Content'

  def self.an_article
    self.new()
  end

  def with_title(title)
    @title = title
    self
  end

  def with_content(content)
    @content = content
    self
  end

  def build
    Article.new(@title, @content) 
  end

  private
  def initialize
    @title = IRRELEVANT_TITLE
    @content = IRRELEVANT_CONTENT
  end
end