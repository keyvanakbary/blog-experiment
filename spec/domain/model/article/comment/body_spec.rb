describe Body do

  it 'raises invalid body because is too short' do
    expect { Body.new('') }.to raise_error InvalidBody
  end

  it 'raises invalid body because is too long' do
    expect { Body.new('X'*301) }.to raise_error InvalidBody
  end
end