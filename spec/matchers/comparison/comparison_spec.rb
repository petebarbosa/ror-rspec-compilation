# frozen_string_literal: true

describe 'Matchers de comparação' do
  it '>' do
    expect(5).to be > 1
  end
  it '>=' do
    expect(5).to be >= 1
    expect(5).to be >= 5
  end

  it '<' do
    expect(5).to be < 10
  end

  it '<=' do
    expect(5).to be <= 10
    expect(5).to be <= 5
  end

  it 'be_between with include' do
    expect(5).to be_between(2, 7).inclusive
    expect(2).to be_between(2, 7).inclusive
  end

  it 'be_between with exclusive' do
    expect(5).to be_between(2, 7).exclusive
    expect(3).to be_between(2, 7).exclusive
  end

  it 'match with regex' do
    expect('cavalo@marinho.com').to match(/..@../)
  end

  it 'start_with' do
    expect('cavalo@marinho.com').to start_with('cavalo')
    expect([1, 2, 3]).to start_with(1)
  end

  it 'end_with' do
    expect('cavalo@marinho.com').to end_with('.com')
    expect([1, 2, 3]).to end_with(3)
  end
end

