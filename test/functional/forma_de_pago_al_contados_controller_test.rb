require 'test_helper'

class FormaDePagoAlContadosControllerTest < ActionController::TestCase
  setup do
    @forma_de_pago_al_contado = forma_de_pago_al_contados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forma_de_pago_al_contados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forma_de_pago_al_contado" do
    assert_difference('FormaDePagoAlContado.count') do
      post :create, forma_de_pago_al_contado: @forma_de_pago_al_contado.attributes
    end

    assert_redirected_to forma_de_pago_al_contado_path(assigns(:forma_de_pago_al_contado))
  end

  test "should show forma_de_pago_al_contado" do
    get :show, id: @forma_de_pago_al_contado.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forma_de_pago_al_contado.to_param
    assert_response :success
  end

  test "should update forma_de_pago_al_contado" do
    put :update, id: @forma_de_pago_al_contado.to_param, forma_de_pago_al_contado: @forma_de_pago_al_contado.attributes
    assert_redirected_to forma_de_pago_al_contado_path(assigns(:forma_de_pago_al_contado))
  end

  test "should destroy forma_de_pago_al_contado" do
    assert_difference('FormaDePagoAlContado.count', -1) do
      delete :destroy, id: @forma_de_pago_al_contado.to_param
    end

    assert_redirected_to forma_de_pago_al_contados_path
  end
end
