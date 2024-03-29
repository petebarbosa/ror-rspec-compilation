describe (1..10), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(5)
    expect(subject).to cover(3, 1, 9)
    expect(subject).not_to cover(0, 11)
  end

  it { is_expected.to cover(5) }
  it { is_expected.to cover(3, 1, 9) }
  it { is_expected.not_to cover(0, 11) }

  it { expect(subject).to cover(10) }
end
