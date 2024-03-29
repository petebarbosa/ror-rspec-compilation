require 'people'

describe People do
  around(:example) do |test|
    @ppl = People.new
    test.run
    @ppl = 'Nobody'
    puts @ppl
  end

  it 'has_attributes' do
    @ppl.name = 'Peter'
    @ppl.age = 34
    expect(@ppl).to have_attributes(name: 'Peter', age: 34)
    expect(@ppl).to have_attributes(name: starting_with('Pe'), age: (be >= 34))
    expect(@ppl).to have_attributes(name: a_string_starting_with('Pe'), age: (be >= 34))
  end

  it 'has_attributes_two' do
    @ppl.name = 'Karen'
    @ppl.age = 40
    expect(@ppl).to have_attributes(name: 'Karen', age: 40)
    expect(@ppl).to have_attributes(name: starting_with('Ka'), age: (be >= 34))
    expect(@ppl).to have_attributes(name: a_string_starting_with('Ka'), age: (be >= 34))
  end
end
