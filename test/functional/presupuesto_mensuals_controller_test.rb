require 'test_helper'

class PresupuestoMensualsControllerTest < ActionController::TestCase
  setup do
    @presupuesto_mensual = presupuesto_mensuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presupuesto_mensuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create presupuesto_mensual" do
    assert_difference('PresupuestoMensual.count') do
      post :create, presupuesto_mensual: @presupuesto_mensual.attributes
    end

    assert_redirected_to presupuesto_mensual_path(assigns(:presupuesto_mensual))
  end

  test "should show presupuesto_mensual" do
    get :show, id: @presupuesto_mensual.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @presupuesto_mensual.to_param
    assert_response :success
  end

  test "should update presupuesto_mensual" do
    put :update, id: @presupuesto_mensual.to_param, presupuesto_mensual: @presupuesto_mensual.attributes
    assert_redirected_to presupuesto_mensual_path(assigns(:presupuesto_mensual))
  end

  test "should destroy presupuesto_mensual" do
    assert_difference('PresupuestoMensual.count', -1) do
      delete :destroy, id: @presupuesto_mensual.to_param
    end

    assert_redirected_to presupuesto_mensuals_path
  end
end
