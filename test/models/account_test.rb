require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  test "has oldest scope" do
    assert_respond_to Account, :oldest
  end
  
  test "has newest scope" do
    assert_respond_to Account, :newest
  end

  test "billing email is valid" do
    assert Account.create(billing_email: "good@example.com").errors[:billing_email].none?
  end
  
  test "billing email is invalid" do
    assert Account.create(billing_email: "bad_example.com").errors[:billing_email].any?
  end
end
