require 'test_helper'

class SolicitudsControllerTest < ActionController::TestCase
  setup do
    @solicitud = solicituds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicituds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitud" do
    assert_difference('Solicitud.count') do
      post :create, solicitud: { cantidad: @solicitud.cantidad, cliente: @solicitud.cliente, dias_faltantes: @solicitud.dias_faltantes, fecha_aprobacion: @solicitud.fecha_aprobacion, fecha_entrega_cliente: @solicitud.fecha_entrega_cliente, fecha_solicitud: @solicitud.fecha_solicitud, instructor: @solicitud.instructor, producto: @solicitud.producto, producto: @solicitud.producto, resolucion: @solicitud.resolucion, saldo: @solicitud.saldo, total: @solicitud.total, unidades_entregadas: @solicitud.unidades_entregadas }
    end

    assert_redirected_to solicitud_path(assigns(:solicitud))
  end

  test "should show solicitud" do
    get :show, id: @solicitud
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitud
    assert_response :success
  end

  test "should update solicitud" do
    put :update, id: @solicitud, solicitud: { cantidad: @solicitud.cantidad, cliente: @solicitud.cliente, dias_faltantes: @solicitud.dias_faltantes, fecha_aprobacion: @solicitud.fecha_aprobacion, fecha_entrega_cliente: @solicitud.fecha_entrega_cliente, fecha_solicitud: @solicitud.fecha_solicitud, instructor: @solicitud.instructor, producto: @solicitud.producto, producto: @solicitud.producto, resolucion: @solicitud.resolucion, saldo: @solicitud.saldo, total: @solicitud.total, unidades_entregadas: @solicitud.unidades_entregadas }
    assert_redirected_to solicitud_path(assigns(:solicitud))
  end

  test "should destroy solicitud" do
    assert_difference('Solicitud.count', -1) do
      delete :destroy, id: @solicitud
    end

    assert_redirected_to solicituds_path
  end
end
