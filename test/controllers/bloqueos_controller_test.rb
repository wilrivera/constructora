require 'test_helper'

class BloqueosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bloqueo = bloqueos(:one)
  end

  test "should get index" do
    get bloqueos_url
    assert_response :success
  end

  test "should get new" do
    get new_bloqueo_url
    assert_response :success
  end

  test "should create bloqueo" do
    assert_difference('Bloqueo.count') do
      post bloqueos_url, params: { bloqueo: { apellidos: @bloqueo.apellidos, de: @bloqueo.de, departamento: @bloqueo.departamento, dni: @bloqueo.dni, moneda: @bloqueo.moneda, monto: @bloqueo.monto, nombres: @bloqueo.nombres, proyecto: @bloqueo.proyecto, tipo: @bloqueo.tipo, voucher: @bloqueo.voucher } }
    end

    assert_redirected_to bloqueo_url(Bloqueo.last)
  end

  test "should show bloqueo" do
    get bloqueo_url(@bloqueo)
    assert_response :success
  end

  test "should get edit" do
    get edit_bloqueo_url(@bloqueo)
    assert_response :success
  end

  test "should update bloqueo" do
    patch bloqueo_url(@bloqueo), params: { bloqueo: { apellidos: @bloqueo.apellidos, de: @bloqueo.de, departamento: @bloqueo.departamento, dni: @bloqueo.dni, moneda: @bloqueo.moneda, monto: @bloqueo.monto, nombres: @bloqueo.nombres, proyecto: @bloqueo.proyecto, tipo: @bloqueo.tipo, voucher: @bloqueo.voucher } }
    assert_redirected_to bloqueo_url(@bloqueo)
  end

  test "should destroy bloqueo" do
    assert_difference('Bloqueo.count', -1) do
      delete bloqueo_url(@bloqueo)
    end

    assert_redirected_to bloqueos_url
  end
end
