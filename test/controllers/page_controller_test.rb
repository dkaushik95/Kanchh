require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get designers" do
    get :designers
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
