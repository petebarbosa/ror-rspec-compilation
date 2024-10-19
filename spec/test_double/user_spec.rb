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

  # Imagine you'are testint a controller that sends an email when a task is created.
  # You have a service class that called `EmailSender`, but you don't
  # care about the actual behavior of the e-mail sendindg logic.
  # You just want to make sure it's beeing called. It's logic is tested elsewhere.

  it 'as_null_object' do
    user = double('User').as_null_object
    allow(user).to receive(:name).and_return('Jack')
    allow(user).to receive(:password).and_return('secret')
    user.abc
    # Instead of an error, the test will pass.
  end
end
