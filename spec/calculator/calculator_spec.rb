# frozen_string_literal: true

require 'calculator'

# When we use the class name with our describe, the application will automatically
# instantiate our class, so we do not need to call it by:
# cacl = Calculator.new
describe Calculator, 'Crazy calculator class' do

  # The idea with context is to organize all tests within, well, the same
  # context. If we're testing, in our calculator, everything related to a
  # sum, we can simply set all of the into the '#sum' context.
  # Remember that, describing context with just ou test with just # or . is not set in stone
  # if it's needed to add more information, avoid using it.
  context '#sum' do
    it 'positive numbers' do
      # Subject is our automatically instantiated Calculator.new
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

    # When implementing our tests, we can choose to write it but not implement at the
    # time. Like a memo. All we need to do it not implement it's body. It'll work, but show
    # as pending.
    it 'test to add later'
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
