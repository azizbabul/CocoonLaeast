require 'test_helper'

class CotactsControllerTest < ActionController::TestCase
  setup do
    @cotact = cotacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cotacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cotact" do
    assert_difference('Cotact.count') do
      post :create, cotact: { email: @cotact.email, message: @cotact.message, name: @cotact.name, phone: @cotact.phone }
    end

    assert_redirected_to cotact_path(assigns(:cotact))
  end

  test "should show cotact" do
    get :show, id: @cotact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cotact
    assert_response :success
  end

  test "should update cotact" do
    patch :update, id: @cotact, cotact: { email: @cotact.email, message: @cotact.message, name: @cotact.name, phone: @cotact.phone }
    assert_redirected_to cotact_path(assigns(:cotact))
  end

  test "should destroy cotact" do
    assert_difference('Cotact.count', -1) do
      delete :destroy, id: @cotact
    end

    assert_redirected_to cotacts_path
  end
end
