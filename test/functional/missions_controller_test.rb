require 'test_helper'

class MissionsControllerTest < ActionController::TestCase
  setup do
    @mission = missions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:missions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mission" do
    assert_difference('Mission.count') do
      post :create, :mission => @mission.attributes
    end

    assert_redirected_to mission_path(assigns(:mission))
  end

  test "should show mission" do
    get :show, :id => @mission.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mission.to_param
    assert_response :success
  end

  test "should update mission" do
    put :update, :id => @mission.to_param, :mission => @mission.attributes
    assert_redirected_to mission_path(assigns(:mission))
  end

  test "should destroy mission" do
    assert_difference('Mission.count', -1) do
      delete :destroy, :id => @mission.to_param
    end

    assert_redirected_to missions_path
  end
end
