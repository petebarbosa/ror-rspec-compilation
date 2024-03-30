# frozen_string_literal: true

require 'person'

describe 'shared_examples' do
  subject(:person) { Person.new }

  shared_examples 'status' do |feeling|
    it feeling.to_s do
      person.send("#{feeling}!")
      expect(person.status).to eq("Feeling #{feeling}")
    end
  end

  it_behaves_like 'status', :happy
  it_behaves_like 'status', :sad
  it_behaves_like 'status', :annoyed

  # it '#happy!' do
  #   person.happy!
  #   expect(person.status).to eq('Happy dude')
  # end
  #
  # it '#sad!' do
  #   person.sad!
  #   expect(person.status).to eq('A bit sad')
  # end
  #
  # it '#annoyed!' do
  #   person.annoyed!
  #   expect(person.status).to eq('Feeling annoyed')
  # end
end
