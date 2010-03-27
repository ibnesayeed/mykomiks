require 'test_helper'

class StripsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create strip" do
    assert_difference('Strip.count') do
      post :create, :strip => strips(:one).attributes
    end

    assert_redirected_to strip_path(assigns(:strip))
  end

  test "should show strip" do
    get :show, :id => strips(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => strips(:one).to_param
    assert_response :success
  end

  test "should update strip" do
    put :update, :id => strips(:one).to_param, :strip => strips(:one).attributes
    assert_redirected_to strip_path(assigns(:strip))
  end

  test "should destroy strip" do
    assert_difference('Strip.count', -1) do
      delete :destroy, :id => strips(:one).to_param
    end

    assert_redirected_to strips_path
  end
end
