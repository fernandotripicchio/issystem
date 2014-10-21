require 'test_helper'

class IncucaisControllerTest < ActionController::TestCase
  setup do
    @incucai = incucais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incucais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incucai" do
    assert_difference('Incucai.count') do
      post :create, incucai: {  }
    end

    assert_redirected_to incucai_path(assigns(:incucai))
  end

  test "should show incucai" do
    get :show, id: @incucai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incucai
    assert_response :success
  end

  test "should update incucai" do
    put :update, id: @incucai, incucai: {  }
    assert_redirected_to incucai_path(assigns(:incucai))
  end

  test "should destroy incucai" do
    assert_difference('Incucai.count', -1) do
      delete :destroy, id: @incucai
    end

    assert_redirected_to incucais_path
  end
end
