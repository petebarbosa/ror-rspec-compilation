# frozen_string_literal: true

# Mock object is a type of test double

require 'student'
require 'course'

describe 'Mocks', :mocks do
  it '#bar' do
    # setup
    student = Student.new

    # verify
    expect(student).to receive(:bar)

    # exercise
    student.bar
  end

  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)
    student.foo(123)
  end

  it 'repetition' do
    student = Student.new
    expect(student).to receive(:foo).with(123).twice
    2.times { student.foo(123) }
  end

  it 'return' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true)
    puts student.foo(123)
  end
end
