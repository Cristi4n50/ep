require 'test_helper'

class DatosContactosControllerTest < ActionController::TestCase
  setup do
    @datos_contacto = datos_contactos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datos_contactos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datos_contacto" do
    assert_difference('DatosContacto.count') do
      post :create, datos_contacto: { apellido: @datos_contacto.apellido, direccion: @datos_contacto.direccion, email: @datos_contacto.email, movil: @datos_contacto.movil, nombre: @datos_contacto.nombre, telefono: @datos_contacto.telefono }
    end

    assert_redirected_to datos_contacto_path(assigns(:datos_contacto))
  end

  test "should show datos_contacto" do
    get :show, id: @datos_contacto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datos_contacto
    assert_response :success
  end

  test "should update datos_contacto" do
    put :update, id: @datos_contacto, datos_contacto: { apellido: @datos_contacto.apellido, direccion: @datos_contacto.direccion, email: @datos_contacto.email, movil: @datos_contacto.movil, nombre: @datos_contacto.nombre, telefono: @datos_contacto.telefono }
    assert_redirected_to datos_contacto_path(assigns(:datos_contacto))
  end

  test "should destroy datos_contacto" do
    assert_difference('DatosContacto.count', -1) do
      delete :destroy, id: @datos_contacto
    end

    assert_redirected_to datos_contactos_path
  end
end
