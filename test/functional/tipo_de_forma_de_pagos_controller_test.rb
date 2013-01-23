require 'test_helper'

class TipoDeFormaDePagosControllerTest < ActionController::TestCase
  setup do
    @tipo_de_forma_de_pago = tipo_de_forma_de_pagos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_de_forma_de_pagos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_de_forma_de_pago" do
    assert_difference('TipoDeFormaDePago.count') do
      post :create, tipo_de_forma_de_pago: @tipo_de_forma_de_pago.attributes
    end

    assert_redirected_to tipo_de_forma_de_pago_path(assigns(:tipo_de_forma_de_pago))
  end

  test "should show tipo_de_forma_de_pago" do
    get :show, id: @tipo_de_forma_de_pago.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_de_forma_de_pago.to_param
    assert_response :success
  end

  test "should update tipo_de_forma_de_pago" do
    put :update, id: @tipo_de_forma_de_pago.to_param, tipo_de_forma_de_pago: @tipo_de_forma_de_pago.attributes
    assert_redirected_to tipo_de_forma_de_pago_path(assigns(:tipo_de_forma_de_pago))
  end

  test "should destroy tipo_de_forma_de_pago" do
    assert_difference('TipoDeFormaDePago.count', -1) do
      delete :destroy, id: @tipo_de_forma_de_pago.to_param
    end

    assert_redirected_to tipo_de_forma_de_pagos_path
  end
end
