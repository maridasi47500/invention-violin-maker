require "application_system_test_case"

class ViolonistesTest < ApplicationSystemTestCase
  setup do
    @violoniste = violonistes(:one)
  end

  test "visiting the index" do
    visit violonistes_url
    assert_selector "h1", text: "Violonistes"
  end

  test "should create violoniste" do
    visit violonistes_url
    click_on "New violoniste"

    fill_in "Nom", with: @violoniste.nom
    click_on "Create Violoniste"

    assert_text "Violoniste was successfully created"
    click_on "Back"
  end

  test "should update Violoniste" do
    visit violoniste_url(@violoniste)
    click_on "Edit this violoniste", match: :first

    fill_in "Nom", with: @violoniste.nom
    click_on "Update Violoniste"

    assert_text "Violoniste was successfully updated"
    click_on "Back"
  end

  test "should destroy Violoniste" do
    visit violoniste_url(@violoniste)
    click_on "Destroy this violoniste", match: :first

    assert_text "Violoniste was successfully destroyed"
  end
end
