# frozen_string_literal: true

require 'counter'

describe 'change' do
  it { expect { Counter.add }.to(change { Counter.count }) }
  it { expect { Counter.add }.to(change { Counter.count }.by(1)) }
  it { expect { Counter.add }.to(change { Counter.count }.from(2).to(3)) }
end
