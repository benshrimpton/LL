require 'test_helper'

class BolgsControllerTest < ActionController::TestCase
  setup do
    @bolg = bolgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bolgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bolg" do
    assert_difference('Bolg.count') do
      post :create, bolg: {  }
    end

    assert_redirected_to bolg_path(assigns(:bolg))
  end

  test "should show bolg" do
    get :show, id: @bolg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bolg
    assert_response :success
  end

  test "should update bolg" do
    patch :update, id: @bolg, bolg: {  }
    assert_redirected_to bolg_path(assigns(:bolg))
  end

  test "should destroy bolg" do
    assert_difference('Bolg.count', -1) do
      delete :destroy, id: @bolg
    end

    assert_redirected_to bolgs_path
  end
end
