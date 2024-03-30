# frozen_string_literal: true

describe 'Matchers de igualdade' do
  it '#equal - testa se é o mesmo objeto' do
    x = 'ruby'
    y = 'ruby'
    expect(x).not_to equal(y)
  end

  it '#be - testa se é o mesmo objeto' do
    x = 'ruby'
    y = 'ruby'
    expect(x).not_to be(y)
  end

  it '#eql - testa se é o mesmo valor' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eql(y)
  end

  it '#eq - testa se é o mesmo valor' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eq(y)
  end
end
