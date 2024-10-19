# Doubles are particularly useful in unit tests when the class you're testing interacts with other classes or services
# (e.g., external APIs, databases, or even just other complex objects).
# With doubles, you can control the behavior of these dependencies without actually invoking their real implementations.
#
# Key Uses of Doubles
# Stubbing: You can make a double return predefined values when certain methods are called.
# Spying: You can check that a method on a double was called with specific arguments.

describe 'double test' do
  it 'nothing' do
    user = double('User')
    allow(user).to receive_messages(name: 'Jack', password: 'secret')
    user.name
  end
end
