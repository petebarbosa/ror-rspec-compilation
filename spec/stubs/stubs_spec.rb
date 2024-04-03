# frozen_string_literal: true

require 'course'
require 'student'

describe 'stubs', :stubs do
  it '#finished' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:finished?)
      .with(an_instance_of(Course))
      .and_return(true)
    course_finished = student.finished?(course)

    expect(course_finished).to be_truthy
  end

  it 'if/elsif' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      if arg == :this
        'got this'
      elsif arg == :that
        'got that'
      end
    end

    expect(student.foo(:this)).to eq('got this')
    expect(student.foo(:that)).to eq('got that')
  end

  it 'multiple instances' do
    student = Student.new
    another_student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(Student).to be_truthy
  end

  it 'testing erros' do
    student = Student.new

    allow(student).to receive(:bar).and_raise(RuntimeError)

    expect { student.bar }.to raise_error(RuntimeError)
  end
end
