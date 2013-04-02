require 'test_helper'

class EstampadosControllerTest < ActionController::TestCase
  setup do
    @estampado = estampados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estampados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estampado" do
    assert_difference('Estampado.count') do
      post :create, estampado: { fecha_envio: @estampado.fecha_envio, fecha_llegada: @estampado.fecha_llegada }
    end

    assert_redirected_to estampado_path(assigns(:estampado))
  end

  test "should show estampado" do
    get :show, id: @estampado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estampado
    assert_response :success
  end

  test "should update estampado" do
    put :update, id: @estampado, estampado: { fecha_envio: @estampado.fecha_envio, fecha_llegada: @estampado.fecha_llegada }
    assert_redirected_to estampado_path(assigns(:estampado))
  end

  test "should destroy estampado" do
    assert_difference('Estampado.count', -1) do
      delete :destroy, id: @estampado
    end

    assert_redirected_to estampados_path
  end
end
