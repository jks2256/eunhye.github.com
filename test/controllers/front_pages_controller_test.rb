require 'test_helper'

class FrontPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get day" do
    get :day
    assert_response :success
  end

  test "should get service" do
    get :service
    assert_response :success
  end

  test "should get shop" do
    get :shop
    assert_response :success
  end

end
