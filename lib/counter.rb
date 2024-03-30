# frozen_string_literal: true

class Counter # :nodoc:
  @counter = 0

  def self.count
    @counter
  end

  def self.add
    @counter += 1
  end
end
