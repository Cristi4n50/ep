require 'test_helper'

class DisenosControllerTest < ActionController::TestCase
  setup do
    @diseno = disenos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disenos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diseno" do
    assert_difference('Diseno.count') do
      post :create, diseno: { color: @diseno.color, corte: @diseno.corte, talla: @diseno.talla }
    end

    assert_redirected_to diseno_path(assigns(:diseno))
  end

  test "should show diseno" do
    get :show, id: @diseno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diseno
    assert_response :success
  end

  test "should update diseno" do
    put :update, id: @diseno, diseno: { color: @diseno.color, corte: @diseno.corte, talla: @diseno.talla }
    assert_redirected_to diseno_path(assigns(:diseno))
  end

  test "should destroy diseno" do
    assert_difference('Diseno.count', -1) do
      delete :destroy, id: @diseno
    end

    assert_redirected_to disenos_path
  end
end
