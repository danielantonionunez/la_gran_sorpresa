require 'test_helper'

class FinanciadorsControllerTest < ActionController::TestCase
  setup do
    @financiador = financiadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financiadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financiador" do
    assert_difference('Financiador.count') do
      post :create, financiador: @financiador.attributes
    end

    assert_redirected_to financiador_path(assigns(:financiador))
  end

  test "should show financiador" do
    get :show, id: @financiador.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @financiador.to_param
    assert_response :success
  end

  test "should update financiador" do
    put :update, id: @financiador.to_param, financiador: @financiador.attributes
    assert_redirected_to financiador_path(assigns(:financiador))
  end

  test "should destroy financiador" do
    assert_difference('Financiador.count', -1) do
      delete :destroy, id: @financiador.to_param
    end

    assert_redirected_to financiadors_path
  end
end
