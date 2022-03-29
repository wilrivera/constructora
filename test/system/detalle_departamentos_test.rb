require "application_system_test_case"

class DetalleDepartamentosTest < ApplicationSystemTestCase
  setup do
    @detalle_departamento = detalle_departamentos(:one)
  end

  test "visiting the index" do
    visit detalle_departamentos_url
    assert_selector "h1", text: "Detalle Departamentos"
  end

  test "creating a Detalle departamento" do
    visit detalle_departamentos_url
    click_on "New Detalle Departamento"

    fill_in "Ambientes", with: @detalle_departamento.ambientes
    fill_in "Ascensores", with: @detalle_departamento.ascensores
    fill_in "Banioservicio", with: @detalle_departamento.banioServicio
    fill_in "Banios", with: @detalle_departamento.banios
    check "Centrocomercial" if @detalle_departamento.centroComercial
    check "Cercacolegio" if @detalle_departamento.cercaColegio
    check "Closet" if @detalle_departamento.closet
    check "Condominio" if @detalle_departamento.condominio
    fill_in "Departamento", with: @detalle_departamento.departamento_id
    fill_in "Descambientes", with: @detalle_departamento.descambientes
    fill_in "Estacionamiento", with: @detalle_departamento.estacionamiento
    check "Intercomunicador" if @detalle_departamento.intercomunicador
    check "Parque" if @detalle_departamento.parque
    check "Recepcion" if @detalle_departamento.recepcion
    fill_in "Suptechada", with: @detalle_departamento.supTechada
    fill_in "Suptotal", with: @detalle_departamento.supTotal
    fill_in "Ubicacion", with: @detalle_departamento.ubicacion
    click_on "Create Detalle departamento"

    assert_text "Detalle departamento was successfully created"
    click_on "Back"
  end

  test "updating a Detalle departamento" do
    visit detalle_departamentos_url
    click_on "Edit", match: :first

    fill_in "Ambientes", with: @detalle_departamento.ambientes
    fill_in "Ascensores", with: @detalle_departamento.ascensores
    fill_in "Banioservicio", with: @detalle_departamento.banioServicio
    fill_in "Banios", with: @detalle_departamento.banios
    check "Centrocomercial" if @detalle_departamento.centroComercial
    check "Cercacolegio" if @detalle_departamento.cercaColegio
    check "Closet" if @detalle_departamento.closet
    check "Condominio" if @detalle_departamento.condominio
    fill_in "Departamento", with: @detalle_departamento.departamento_id
    fill_in "Descambientes", with: @detalle_departamento.descambientes
    fill_in "Estacionamiento", with: @detalle_departamento.estacionamiento
    check "Intercomunicador" if @detalle_departamento.intercomunicador
    check "Parque" if @detalle_departamento.parque
    check "Recepcion" if @detalle_departamento.recepcion
    fill_in "Suptechada", with: @detalle_departamento.supTechada
    fill_in "Suptotal", with: @detalle_departamento.supTotal
    fill_in "Ubicacion", with: @detalle_departamento.ubicacion
    click_on "Update Detalle departamento"

    assert_text "Detalle departamento was successfully updated"
    click_on "Back"
  end

  test "destroying a Detalle departamento" do
    visit detalle_departamentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detalle departamento was successfully destroyed"
  end
end
