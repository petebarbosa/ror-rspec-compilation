require 'non_empty_string'

describe NonEmptyString do
  it 'be_instance_of' do
    expect(subject).to be_instance_of(NonEmptyString)
    expect(10).to be_instance_of(Integer)
  end

  it 'be_kind_of' do
    expect(subject).to be_kind_of(String)
    expect(subject).to be_kind_of(NonEmptyString)
    expect(10).to be_kind_of(Integer)
  end

  it 'respond_to' do
    expect(subject).to respond_to(:count)
    expect(subject).to respond_to(:size)
  end

  it 'be_a & be_an' do
    expect(subject).to be_a(String)
    expect(10).to be_an(Integer)
  end
end
