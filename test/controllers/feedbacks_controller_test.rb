require 'test_helper'

class FeedbacksControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feedback" do
    assert_difference('Notifications.deliveries.count') do
      post :create, feedback: { comment: "Nice app", from: "greg@example.com" }
    end

    assert_redirected_to root_path
  end

  test "should not create feedback if invalid" do
    assert_no_difference('Notifications.deliveries.count') do
      post :create, feedback: { comment: "", from: "invalid" }
    end

    assert_template :new
  end
end
