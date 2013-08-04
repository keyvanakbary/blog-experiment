describe Author do

  it 'raises invalid name because name is too short' do
    expect { Author.new('') }.to raise_error InvalidName
  end

  it 'raises invalid name because name is too long' do
    expect { Author.new('X'*11) }.to raise_error InvalidName
  end
end