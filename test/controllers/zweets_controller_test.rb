require 'test_helper'

class ZweetsControllerTest < ActionController::TestCase
  setup do
    @zweet = zweets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zweets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zweet" do
    assert_difference('Zweet.count') do
      post :create, zweet: { status: @zweet.status, zombie_id: @zweet.zombie_id }
    end

    assert_redirected_to zweet_path(assigns(:zweet))
  end

  test "should show zweet" do
    get :show, id: @zweet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zweet
    assert_response :success
  end

  test "should update zweet" do
    patch :update, id: @zweet, zweet: { status: @zweet.status, zombie_id: @zweet.zombie_id }
    assert_redirected_to zweet_path(assigns(:zweet))
  end

  test "should destroy zweet" do
    assert_difference('Zweet.count', -1) do
      delete :destroy, id: @zweet
    end

    assert_redirected_to zweets_path
  end
end
