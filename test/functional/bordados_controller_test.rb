require 'test_helper'

class BordadosControllerTest < ActionController::TestCase
  setup do
    @bordado = bordados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bordados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bordado" do
    assert_difference('Bordado.count') do
      post :create, bordado: { fecha_envio: @bordado.fecha_envio, fecha_llegada: @bordado.fecha_llegada }
    end

    assert_redirected_to bordado_path(assigns(:bordado))
  end

  test "should show bordado" do
    get :show, id: @bordado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bordado
    assert_response :success
  end

  test "should update bordado" do
    put :update, id: @bordado, bordado: { fecha_envio: @bordado.fecha_envio, fecha_llegada: @bordado.fecha_llegada }
    assert_redirected_to bordado_path(assigns(:bordado))
  end

  test "should destroy bordado" do
    assert_difference('Bordado.count', -1) do
      delete :destroy, id: @bordado
    end

    assert_redirected_to bordados_path
  end
end
