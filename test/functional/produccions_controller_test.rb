require 'test_helper'

class ProduccionsControllerTest < ActionController::TestCase
  setup do
    @produccion = produccions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produccions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produccion" do
    assert_difference('Produccion.count') do
      post :create, produccion: { fecha_envio: @produccion.fecha_envio, fecha_llegada: @produccion.fecha_llegada }
    end

    assert_redirected_to produccion_path(assigns(:produccion))
  end

  test "should show produccion" do
    get :show, id: @produccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produccion
    assert_response :success
  end

  test "should update produccion" do
    put :update, id: @produccion, produccion: { fecha_envio: @produccion.fecha_envio, fecha_llegada: @produccion.fecha_llegada }
    assert_redirected_to produccion_path(assigns(:produccion))
  end

  test "should destroy produccion" do
    assert_difference('Produccion.count', -1) do
      delete :destroy, id: @produccion
    end

    assert_redirected_to produccions_path
  end
end
