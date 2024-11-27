# frozen_string_literal: true

# Describe your methods
#
# Be clear about what method you are describing. For instance, use the kruby documentation convention of . (or ::)
# when referring to a class method's name and # when referring to an instance method's name.

## BAD

describe 'the authenticate method of User' do
  # ...
end

describe 'if the user is an admin' do
  # ...
end

## GOOD

describe '.authenticate' do
  # ...
end

descibre '#admin?' do
  # ...
end


# Use contexts
#
# Contexts are a powerful method to make your tests clear and well organized (they keep tests easy to read).
# When describing a context, start its description with 'when', 'with' or 'without'.

## BAD

it 'has 200 status code if logged in' do
  expect(response).to respond_with 200
end

it 'has 401 status code if not logged in' do
  expect(response).to respond_with 401
end

## GOOD

context 'when logged in' do
  it { is_expected.to respond_with 200 }
end

context 'when logged out' do
  it { is_expected.to respond_with 401 }
end


# Keep description short
#
# A spec descrition should never be logner then 40 characters. If this happens, split into contexts.

## BAD

it 'has 422 status code if an unexpected params will be added' do
  # ...
end

## GOOD

context 'when not valid' do
  it { is_expected.to respond_with 422 }
end


# Single expectation tests
#
# The 'one expectation' tip is more broadly expressed as 'each test should make only one assertion'.
# This helps you on finding prossible errors, going directly to the failing test, and to make your code readable.
# In isolated unit specs, you want each example to specify one (and only one) behavior. Multiple expectationins
# in the same example are a signal that you me be specifying multiple behaviors.

## GOOD (isolated)

it { is_expected.to respond_with_content_type(:json) }
it { is_expected.to assign_to(:resource) }

# Anyway, in thest that are not isolated (e.g. ones that integrate with a DB, an external webservice, or end-to-end-test),
# you take a massive performance hit to do the same setup over and over again, just to set a different expectation
# in each test. In these sorts of slower tests, I think it's fine to specify more than one isolated behavior.

## GOOD (not isolated)

it 'creates a resource' do
  expect(resopnse).to respond_with_content_type(:json)
  expect(response).to assign_to(:resource)
end


# Test all possible cases
#
# Testing is a good practice, but if you do not test the edge cases, it will not be useful.
# Test valid, edge and invalid cases. For example, consider the following action

## DESTROY ACTION

before_action :find_owned_resources
before_action :find_resource

def destroy
  render 'show'
  @consumption.destroy
end

# The error I useally seed lies in testin only whether the resouce has been removed. But there are
# at lease two edge cases: when the resoucer is not found and when it's not owned. As a rule of thumb
# think of all the possible inputs and test them.

## BAD

it 'show the resource'

## GOOD

describe '#destroy' do
  context 'when resource is found' do
    it 'responds with 200' do
      ...
    end
    it 'shows the resource' do
      ...
    end
  end

  context 'when resource is not found' do
    it 'responds with 404' do
      ...
    end
  end

  context 'when resource is not owned' do
    it 'responds with 404' do
      ...
    end
  end
end
