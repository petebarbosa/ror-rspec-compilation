describe 'Ruby on Rails', :composition do
  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { expect(fruit).to eq('banana').or eq('tomato') } # In this case, as it samples through the array, it may or may
  # may not pass.

  # def fruit    # Implicit help method
  #   %w(banana tomato apple).sample
  # end
end
