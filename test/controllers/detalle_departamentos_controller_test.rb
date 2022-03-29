require 'test_helper'

class DetalleDepartamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalle_departamento = detalle_departamentos(:one)
  end

  test "should get index" do
    get detalle_departamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_detalle_departamento_url
    assert_response :success
  end

  test "should create detalle_departamento" do
    assert_difference('DetalleDepartamento.count') do
      post detalle_departamentos_url, params: { detalle_departamento: { ambientes: @detalle_departamento.ambientes, ascensores: @detalle_departamento.ascensores, banioServicio: @detalle_departamento.banioServicio, banios: @detalle_departamento.banios, centroComercial: @detalle_departamento.centroComercial, cercaColegio: @detalle_departamento.cercaColegio, closet: @detalle_departamento.closet, condominio: @detalle_departamento.condominio, departamento_id: @detalle_departamento.departamento_id, descambientes: @detalle_departamento.descambientes, estacionamiento: @detalle_departamento.estacionamiento, intercomunicador: @detalle_departamento.intercomunicador, parque: @detalle_departamento.parque, recepcion: @detalle_departamento.recepcion, supTechada: @detalle_departamento.supTechada, supTotal: @detalle_departamento.supTotal, ubicacion: @detalle_departamento.ubicacion } }
    end

    assert_redirected_to detalle_departamento_url(DetalleDepartamento.last)
  end

  test "should show detalle_departamento" do
    get detalle_departamento_url(@detalle_departamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_detalle_departamento_url(@detalle_departamento)
    assert_response :success
  end

  test "should update detalle_departamento" do
    patch detalle_departamento_url(@detalle_departamento), params: { detalle_departamento: { ambientes: @detalle_departamento.ambientes, ascensores: @detalle_departamento.ascensores, banioServicio: @detalle_departamento.banioServicio, banios: @detalle_departamento.banios, centroComercial: @detalle_departamento.centroComercial, cercaColegio: @detalle_departamento.cercaColegio, closet: @detalle_departamento.closet, condominio: @detalle_departamento.condominio, departamento_id: @detalle_departamento.departamento_id, descambientes: @detalle_departamento.descambientes, estacionamiento: @detalle_departamento.estacionamiento, intercomunicador: @detalle_departamento.intercomunicador, parque: @detalle_departamento.parque, recepcion: @detalle_departamento.recepcion, supTechada: @detalle_departamento.supTechada, supTotal: @detalle_departamento.supTotal, ubicacion: @detalle_departamento.ubicacion } }
    assert_redirected_to detalle_departamento_url(@detalle_departamento)
  end

  test "should destroy detalle_departamento" do
    assert_difference('DetalleDepartamento.count', -1) do
      delete detalle_departamento_url(@detalle_departamento)
    end

    assert_redirected_to detalle_departamentos_url
  end
end
