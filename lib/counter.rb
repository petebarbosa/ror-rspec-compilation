# frozen_string_literal: true

# Stop annoying Rubocop
class Counter
  @counter = 0

  def self.count
    @counter
  end

  def self.add
    @counter += 1
  end
end
