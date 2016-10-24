require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "email should not be valid" do
    user = User.new(email: 'notvalid',
                    password: 'password',
                    password_confirmation: 'password')

    assert_not user.valid?
  end

  test "email should not be valid" do
    user = User.new(email: "test@valid.com",
                    password: 'password',
                    password_confirmation: 'password')

    assert user.valid?
  end

  test "user should have confirmation token" do
    user = User.create(email: 'notvalid',
                    password: 'password',
                    password_confirmation: 'password')

  assert_not_nil user.confirmation_token
  end
end
