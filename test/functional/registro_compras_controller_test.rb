require 'test_helper'

class RegistroComprasControllerTest < ActionController::TestCase
  setup do
    @registro_compra = registro_compras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registro_compras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro_compra" do
    assert_difference('RegistroCompra.count') do
      post :create, registro_compra: { descripcion_producto: @registro_compra.descripcion_producto, valor_total: @registro_compra.valor_total, valor_unidad: @registro_compra.valor_unidad }
    end

    assert_redirected_to registro_compra_path(assigns(:registro_compra))
  end

  test "should show registro_compra" do
    get :show, id: @registro_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registro_compra
    assert_response :success
  end

  test "should update registro_compra" do
    put :update, id: @registro_compra, registro_compra: { descripcion_producto: @registro_compra.descripcion_producto, valor_total: @registro_compra.valor_total, valor_unidad: @registro_compra.valor_unidad }
    assert_redirected_to registro_compra_path(assigns(:registro_compra))
  end

  test "should destroy registro_compra" do
    assert_difference('RegistroCompra.count', -1) do
      delete :destroy, id: @registro_compra
    end

    assert_redirected_to registro_compras_path
  end
end
