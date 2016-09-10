require 'test_helper'

class BarsControllerTest < ActionController::TestCase
  setup do
    @bar = bars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bars)
  end

  test "should create bar" do
    assert_difference('Bar.count') do
      post :create, bar: { name: @bar.name }
    end

    assert_response 201
  end

  test "should show bar" do
    get :show, id: @bar
    assert_response :success
  end

  test "should update bar" do
    put :update, id: @bar, bar: { name: @bar.name }
    assert_response 204
  end

  test "should destroy bar" do
    assert_difference('Bar.count', -1) do
      delete :destroy, id: @bar
    end

    assert_response 204
  end
end
