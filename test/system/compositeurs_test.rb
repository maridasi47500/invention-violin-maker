require "application_system_test_case"

class CompositeursTest < ApplicationSystemTestCase
  setup do
    @compositeur = compositeurs(:one)
  end

  test "visiting the index" do
    visit compositeurs_url
    assert_selector "h1", text: "Compositeurs"
  end

  test "should create compositeur" do
    visit compositeurs_url
    click_on "New compositeur"

    fill_in "Epoque", with: @compositeur.epoque_id
    fill_in "Nationalite", with: @compositeur.nationalite
    fill_in "Nom", with: @compositeur.nom
    click_on "Create Compositeur"

    assert_text "Compositeur was successfully created"
    click_on "Back"
  end

  test "should update Compositeur" do
    visit compositeur_url(@compositeur)
    click_on "Edit this compositeur", match: :first

    fill_in "Epoque", with: @compositeur.epoque_id
    fill_in "Nationalite", with: @compositeur.nationalite
    fill_in "Nom", with: @compositeur.nom
    click_on "Update Compositeur"

    assert_text "Compositeur was successfully updated"
    click_on "Back"
  end

  test "should destroy Compositeur" do
    visit compositeur_url(@compositeur)
    click_on "Destroy this compositeur", match: :first

    assert_text "Compositeur was successfully destroyed"
  end
end
