describe Array.new([1, 2, 3]) do
  it '#include' do
    expect(subject).to include(1)
    expect(subject).to include(3, 2)
  end

  it '#match_array' do
    expect(subject).to match_array([1, 2, 3])
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly(3, 1, 2)
  end
end
