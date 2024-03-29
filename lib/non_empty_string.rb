# frozen_string_literal: true

class NonEmptyString < String
  def initialize
    self << 'Not empty'
  end
end
