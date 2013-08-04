require 'domain/builder/article_builder'

describe Article do

  let(:article) { ArticleBuilder.an_article.build }

  it 'adds a comment' do
    article.add_comment Author.new('Pepito'), Body.new('Test')
    expect(article.comments.count).to eq 1
  end
end