require "application_system_test_case"

class VentaTest < ApplicationSystemTestCase
  setup do
    @ventum = venta(:one)
  end

  test "visiting the index" do
    visit venta_url
    assert_selector "h1", text: "Venta"
  end

  test "creating a Ventum" do
    visit venta_url
    click_on "New Ventum"

    fill_in "Banco", with: @ventum.banco
    fill_in "Cliente", with: @ventum.cliente
    fill_in "Dpto", with: @ventum.dpto
    fill_in "Formapago", with: @ventum.formaPago
    fill_in "Montoabonado", with: @ventum.montoAbonado
    fill_in "Montodscto", with: @ventum.montoDscto
    fill_in "Montopagar", with: @ventum.montoPagar
    fill_in "Nroctaorigen", with: @ventum.nroCtaOrigen
    fill_in "Precio", with: @ventum.precio
    click_on "Create Ventum"

    assert_text "Ventum was successfully created"
    click_on "Back"
  end

  test "updating a Ventum" do
    visit venta_url
    click_on "Edit", match: :first

    fill_in "Banco", with: @ventum.banco
    fill_in "Cliente", with: @ventum.cliente
    fill_in "Dpto", with: @ventum.dpto
    fill_in "Formapago", with: @ventum.formaPago
    fill_in "Montoabonado", with: @ventum.montoAbonado
    fill_in "Montodscto", with: @ventum.montoDscto
    fill_in "Montopagar", with: @ventum.montoPagar
    fill_in "Nroctaorigen", with: @ventum.nroCtaOrigen
    fill_in "Precio", with: @ventum.precio
    click_on "Update Ventum"

    assert_text "Ventum was successfully updated"
    click_on "Back"
  end

  test "destroying a Ventum" do
    visit venta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ventum was successfully destroyed"
  end
end
