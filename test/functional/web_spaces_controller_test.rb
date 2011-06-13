require 'test_helper'

class WebSpacesControllerTest < ActionController::TestCase
  setup do
    @web_space = web_spaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_spaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_space" do
    assert_difference('WebSpace.count') do
      post :create, :web_space => @web_space.attributes
    end

    assert_redirected_to web_space_path(assigns(:web_space))
  end

  test "should show web_space" do
    get :show, :id => @web_space.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @web_space.to_param
    assert_response :success
  end

  test "should update web_space" do
    put :update, :id => @web_space.to_param, :web_space => @web_space.attributes
    assert_redirected_to web_space_path(assigns(:web_space))
  end

  test "should destroy web_space" do
    assert_difference('WebSpace.count', -1) do
      delete :destroy, :id => @web_space.to_param
    end

    assert_redirected_to web_spaces_path
  end
end
