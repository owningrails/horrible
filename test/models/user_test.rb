require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "has oldest scope" do
    assert_respond_to User, :oldest
  end
  
  test "has newest scope" do
    assert_respond_to User, :newest
  end

  test "billing email is valid" do
    assert User.create(email: "good@example.com").errors[:email].none?
  end
  
  test "billing email is invalid" do
    assert User.create(email: "bad_example.com").errors[:email].any?
  end
end
