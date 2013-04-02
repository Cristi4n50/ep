require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post :create, usuario: { apellido1: @usuario.apellido1, apellido2: @usuario.apellido2, clave: @usuario.clave, email: @usuario.email, fecha_nac: @usuario.fecha_nac, nombre1: @usuario.nombre1, nombre2: @usuario.nombre2, num_cedula: @usuario.num_cedula, usuario: @usuario.usuario }
    end

    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should show usuario" do
    get :show, id: @usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario
    assert_response :success
  end

  test "should update usuario" do
    put :update, id: @usuario, usuario: { apellido1: @usuario.apellido1, apellido2: @usuario.apellido2, clave: @usuario.clave, email: @usuario.email, fecha_nac: @usuario.fecha_nac, nombre1: @usuario.nombre1, nombre2: @usuario.nombre2, num_cedula: @usuario.num_cedula, usuario: @usuario.usuario }
    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete :destroy, id: @usuario
    end

    assert_redirected_to usuarios_path
  end
end
