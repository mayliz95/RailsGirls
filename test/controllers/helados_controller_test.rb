require 'test_helper'

class HeladosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @helado = helados(:one)
  end

  test "should get index" do
    get helados_url
    assert_response :success
  end

  test "should get new" do
    get new_helado_url
    assert_response :success
  end

  test "should create helado" do
    assert_difference('Helado.count') do
      post helados_url, params: { helado: { descripcion: @helado.descripcion, foto: @helado.foto, nombre: @helado.nombre, precio: @helado.precio } }
    end

    assert_redirected_to helado_url(Helado.last)
  end

  test "should show helado" do
    get helado_url(@helado)
    assert_response :success
  end

  test "should get edit" do
    get edit_helado_url(@helado)
    assert_response :success
  end

  test "should update helado" do
    patch helado_url(@helado), params: { helado: { descripcion: @helado.descripcion, foto: @helado.foto, nombre: @helado.nombre, precio: @helado.precio } }
    assert_redirected_to helado_url(@helado)
  end

  test "should destroy helado" do
    assert_difference('Helado.count', -1) do
      delete helado_url(@helado)
    end

    assert_redirected_to helados_url
  end
end
