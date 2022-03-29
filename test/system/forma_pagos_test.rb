require "application_system_test_case"

class FormaPagosTest < ApplicationSystemTestCase
  setup do
    @forma_pago = forma_pagos(:one)
  end

  test "visiting the index" do
    visit forma_pagos_url
    assert_selector "h1", text: "Forma Pagos"
  end

  test "creating a Forma pago" do
    visit forma_pagos_url
    click_on "New Forma Pago"

    fill_in "Name", with: @forma_pago.name
    click_on "Create Forma pago"

    assert_text "Forma pago was successfully created"
    click_on "Back"
  end

  test "updating a Forma pago" do
    visit forma_pagos_url
    click_on "Edit", match: :first

    fill_in "Name", with: @forma_pago.name
    click_on "Update Forma pago"

    assert_text "Forma pago was successfully updated"
    click_on "Back"
  end

  test "destroying a Forma pago" do
    visit forma_pagos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Forma pago was successfully destroyed"
  end
end
