require "application_system_test_case"

class OeuvresTest < ApplicationSystemTestCase
  setup do
    @oeuvre = oeuvres(:one)
  end

  test "visiting the index" do
    visit oeuvres_url
    assert_selector "h1", text: "Oeuvres"
  end

  test "should create oeuvre" do
    visit oeuvres_url
    click_on "New oeuvre"

    fill_in "Annee", with: @oeuvre.annee
    fill_in "Compositeur", with: @oeuvre.compositeur_id
    fill_in "Style musical", with: @oeuvre.style_musical_id
    fill_in "Titre", with: @oeuvre.titre
    click_on "Create Oeuvre"

    assert_text "Oeuvre was successfully created"
    click_on "Back"
  end

  test "should update Oeuvre" do
    visit oeuvre_url(@oeuvre)
    click_on "Edit this oeuvre", match: :first

    fill_in "Annee", with: @oeuvre.annee
    fill_in "Compositeur", with: @oeuvre.compositeur_id
    fill_in "Style musical", with: @oeuvre.style_musical_id
    fill_in "Titre", with: @oeuvre.titre
    click_on "Update Oeuvre"

    assert_text "Oeuvre was successfully updated"
    click_on "Back"
  end

  test "should destroy Oeuvre" do
    visit oeuvre_url(@oeuvre)
    click_on "Destroy this oeuvre", match: :first

    assert_text "Oeuvre was successfully destroyed"
  end
end
