require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { agencia_id: @cliente.agencia_id, nro_identificacion: @cliente.nro_identificacion, primer_apellido: @cliente.primer_apellido, primer_nombre: @cliente.primer_nombre, segundo_apellido: @cliente.segundo_apellido, segundo_nombre: @cliente.segundo_nombre, tipo_cliente: @cliente.tipo_cliente, tipo_identificacion: @cliente.tipo_identificacion }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    patch :update, id: @cliente, cliente: { agencia_id: @cliente.agencia_id, nro_identificacion: @cliente.nro_identificacion, primer_apellido: @cliente.primer_apellido, primer_nombre: @cliente.primer_nombre, segundo_apellido: @cliente.segundo_apellido, segundo_nombre: @cliente.segundo_nombre, tipo_cliente: @cliente.tipo_cliente, tipo_identificacion: @cliente.tipo_identificacion }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
