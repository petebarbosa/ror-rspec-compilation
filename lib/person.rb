# frozen_string_literal: true

class Person # :nodoc:
  attr_accessor :name, :age
  attr_reader :status

  def happy!
    @status = 'Feeling happy'
  end

  def sad!
    @status = 'Feeling sad'
  end

  def annoyed!
    @status = 'Feeling annoyed'
  end
end
