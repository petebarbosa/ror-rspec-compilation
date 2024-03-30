# frozen_string_literal: true

$count = 0

describe 'let' do
  summon_order = []

  let!(:counter) do
    summon_order << :let!
    $count += 1
  end

  it 'calls helper before method' do
    summon_order << :example
    expect(summon_order).to eq(%i[let! example])
    expect(counter).to eq(1)
  end
end
