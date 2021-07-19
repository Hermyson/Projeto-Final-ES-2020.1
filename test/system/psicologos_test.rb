require "application_system_test_case"

class PsicologosTest < ApplicationSystemTestCase
  setup do
    @psicologo = psicologos(:one)
  end

  test "visiting the index" do
    visit psicologos_url
    assert_selector "h1", text: "Psicologos"
  end

  test "creating a Psicologo" do
    visit psicologos_url
    click_on "New Psicologo"

    fill_in "Crp", with: @psicologo.crp
    fill_in "Nome", with: @psicologo.nome
    click_on "Create Psicologo"

    assert_text "Psicologo was successfully created"
    click_on "Back"
  end

  test "updating a Psicologo" do
    visit psicologos_url
    click_on "Edit", match: :first

    fill_in "Crp", with: @psicologo.crp
    fill_in "Nome", with: @psicologo.nome
    click_on "Update Psicologo"

    assert_text "Psicologo was successfully updated"
    click_on "Back"
  end

  test "destroying a Psicologo" do
    visit psicologos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Psicologo was successfully destroyed"
  end
end
