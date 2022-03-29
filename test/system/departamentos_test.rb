require "application_system_test_case"

class DepartamentosTest < ApplicationSystemTestCase
  setup do
    @departamento = departamentos(:one)
  end

  test "visiting the index" do
    visit departamentos_url
    assert_selector "h1", text: "Departamentos"
  end

  test "creating a Departamento" do
    visit departamentos_url
    click_on "New Departamento"

    fill_in "Area", with: @departamento.area
    fill_in "Descripcion", with: @departamento.descripcion
    fill_in "Numdormitorio", with: @departamento.numdormitorio
    fill_in "Numdpto", with: @departamento.numdpto
    fill_in "Piso", with: @departamento.piso
    fill_in "Precio", with: @departamento.precio
    click_on "Create Departamento"

    assert_text "Departamento was successfully created"
    click_on "Back"
  end

  test "updating a Departamento" do
    visit departamentos_url
    click_on "Edit", match: :first

    fill_in "Area", with: @departamento.area
    fill_in "Descripcion", with: @departamento.descripcion
    fill_in "Numdormitorio", with: @departamento.numdormitorio
    fill_in "Numdpto", with: @departamento.numdpto
    fill_in "Piso", with: @departamento.piso
    fill_in "Precio", with: @departamento.precio
    click_on "Update Departamento"

    assert_text "Departamento was successfully updated"
    click_on "Back"
  end

  test "destroying a Departamento" do
    visit departamentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Departamento was successfully destroyed"
  end
end
