describe Comment do
  it 'creates a comment' do
    Comment.new(Author.new('Pepito'), Body.new('Test comment'))
  end
end