describe Content do

  it 'raises invalid content because is too short' do
    expect { Content.new('') }.to raise_error InvalidContent
  end

  it 'raises invalid content because is too long' do
    expect { Content.new('X'*3001) }.to raise_error InvalidContent
  end
end