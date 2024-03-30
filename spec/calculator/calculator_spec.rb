# frozen_string_literal: true

require 'calculator'

describe Calculator, 'Crazy calculator class' do
  context '#sum' do
    it 'positive numbers' do
      result = subject.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'negative and positive numbers' do
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end

    it 'negative numbers' do
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end

  context '#div' do
    it 'divided by 0' do
      expect { subject.div(3, 0) }.to raise_exception # false-positive possibility
      expect { subject.div(3, 0) }.to raise_error(ZeroDivisionError)
      expect { subject.div(3, 0) }.to raise_error('divided by 0')
      expect { subject.div(3, 0) }.to raise_error(ZeroDivisionError, 'divided by 0')
      expect { subject.div(3, 0) }.to raise_error(/divided/)
    end
  end
end
