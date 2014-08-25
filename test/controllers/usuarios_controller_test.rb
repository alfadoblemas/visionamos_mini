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
      post :create, usuario: { agencia_id: @usuario.agencia_id, apellido: @usuario.apellido, email: @usuario.email, nombre: @usuario.nombre, nro_identificacion: @usuario.nro_identificacion, tipo_identificacion: @usuario.tipo_identificacion, tipo_usuario: @usuario.tipo_usuario }
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
    patch :update, id: @usuario, usuario: { agencia_id: @usuario.agencia_id, apellido: @usuario.apellido, email: @usuario.email, nombre: @usuario.nombre, nro_identificacion: @usuario.nro_identificacion, tipo_identificacion: @usuario.tipo_identificacion, tipo_usuario: @usuario.tipo_usuario }
    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete :destroy, id: @usuario
    end

    assert_redirected_to usuarios_path
  end
end
