require 'test_helper'

class TipoDePresupuestosControllerTest < ActionController::TestCase
  setup do
    @tipo_de_presupuesto = tipo_de_presupuestos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_de_presupuestos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_de_presupuesto" do
    assert_difference('TipoDePresupuesto.count') do
      post :create, tipo_de_presupuesto: @tipo_de_presupuesto.attributes
    end

    assert_redirected_to tipo_de_presupuesto_path(assigns(:tipo_de_presupuesto))
  end

  test "should show tipo_de_presupuesto" do
    get :show, id: @tipo_de_presupuesto.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_de_presupuesto.to_param
    assert_response :success
  end

  test "should update tipo_de_presupuesto" do
    put :update, id: @tipo_de_presupuesto.to_param, tipo_de_presupuesto: @tipo_de_presupuesto.attributes
    assert_redirected_to tipo_de_presupuesto_path(assigns(:tipo_de_presupuesto))
  end

  test "should destroy tipo_de_presupuesto" do
    assert_difference('TipoDePresupuesto.count', -1) do
      delete :destroy, id: @tipo_de_presupuesto.to_param
    end

    assert_redirected_to tipo_de_presupuestos_path
  end
end
