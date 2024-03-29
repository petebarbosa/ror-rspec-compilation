describe 'Predicates' do
  it 'be_odd' do
    expect(1.odd?).to be true
    expect(1).to be_odd
  end
end
