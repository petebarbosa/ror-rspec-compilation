$count = 0

describe 'let' do
  let(:count) { $count += 1 }

  it 'memorizes the value' do
    expect(count).to eq(1)
    expect(count).to eq(1)
  end

  it 'not cached between tests' do
    expect(count).to eq(2)
  end
end
