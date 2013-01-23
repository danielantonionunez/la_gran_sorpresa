require 'test_helper'

class FormaDePagoAlCreditosControllerTest < ActionController::TestCase
  setup do
    @forma_de_pago_al_credito = forma_de_pago_al_creditos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forma_de_pago_al_creditos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forma_de_pago_al_credito" do
    assert_difference('FormaDePagoAlCredito.count') do
      post :create, forma_de_pago_al_credito: @forma_de_pago_al_credito.attributes
    end

    assert_redirected_to forma_de_pago_al_credito_path(assigns(:forma_de_pago_al_credito))
  end

  test "should show forma_de_pago_al_credito" do
    get :show, id: @forma_de_pago_al_credito.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forma_de_pago_al_credito.to_param
    assert_response :success
  end

  test "should update forma_de_pago_al_credito" do
    put :update, id: @forma_de_pago_al_credito.to_param, forma_de_pago_al_credito: @forma_de_pago_al_credito.attributes
    assert_redirected_to forma_de_pago_al_credito_path(assigns(:forma_de_pago_al_credito))
  end

  test "should destroy forma_de_pago_al_credito" do
    assert_difference('FormaDePagoAlCredito.count', -1) do
      delete :destroy, id: @forma_de_pago_al_credito.to_param
    end

    assert_redirected_to forma_de_pago_al_creditos_path
  end
end
