require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get users" do
    get :users
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
