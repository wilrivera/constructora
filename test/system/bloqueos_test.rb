require "application_system_test_case"

class BloqueosTest < ApplicationSystemTestCase
  setup do
    @bloqueo = bloqueos(:one)
  end

  test "visiting the index" do
    visit bloqueos_url
    assert_selector "h1", text: "Bloqueos"
  end

  test "creating a Bloqueo" do
    visit bloqueos_url
    click_on "New Bloqueo"

    fill_in "Apellidos", with: @bloqueo.apellidos
    fill_in "De", with: @bloqueo.de
    fill_in "Departamento", with: @bloqueo.departamento
    fill_in "Dni", with: @bloqueo.dni
    fill_in "Moneda", with: @bloqueo.moneda
    fill_in "Monto", with: @bloqueo.monto
    fill_in "Nombres", with: @bloqueo.nombres
    fill_in "Proyecto", with: @bloqueo.proyecto
    fill_in "Tipo", with: @bloqueo.tipo
    fill_in "Voucher", with: @bloqueo.voucher
    click_on "Create Bloqueo"

    assert_text "Bloqueo was successfully created"
    click_on "Back"
  end

  test "updating a Bloqueo" do
    visit bloqueos_url
    click_on "Edit", match: :first

    fill_in "Apellidos", with: @bloqueo.apellidos
    fill_in "De", with: @bloqueo.de
    fill_in "Departamento", with: @bloqueo.departamento
    fill_in "Dni", with: @bloqueo.dni
    fill_in "Moneda", with: @bloqueo.moneda
    fill_in "Monto", with: @bloqueo.monto
    fill_in "Nombres", with: @bloqueo.nombres
    fill_in "Proyecto", with: @bloqueo.proyecto
    fill_in "Tipo", with: @bloqueo.tipo
    fill_in "Voucher", with: @bloqueo.voucher
    click_on "Update Bloqueo"

    assert_text "Bloqueo was successfully updated"
    click_on "Back"
  end

  test "destroying a Bloqueo" do
    visit bloqueos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bloqueo was successfully destroyed"
  end
end
