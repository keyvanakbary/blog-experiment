describe Title do

  it 'raises invalid title because is too short' do
    expect { Title.new('') }.to raise_error InvalidTitle
  end

  it 'raises invalid title because is too long' do
    expect { Title.new('X'*31) }.to raise_error InvalidTitle
  end
end