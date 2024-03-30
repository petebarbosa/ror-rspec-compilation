# frozen_string_literal: true

class NonEmptyString < String # :nodoc:
  def initialize(str = 'Not empty')
    super(str)
  end
end
