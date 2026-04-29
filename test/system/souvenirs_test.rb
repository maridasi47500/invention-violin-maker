require "application_system_test_case"

class SouvenirsTest < ApplicationSystemTestCase
  setup do
    @souvenir = souvenirs(:one)
  end

  test "visiting the index" do
    visit souvenirs_url
    assert_selector "h1", text: "Souvenirs"
  end

  test "should create souvenir" do
    visit souvenirs_url
    click_on "New souvenir"

    fill_in "Contexte", with: @souvenir.contexte
    fill_in "Date ecoute", with: @souvenir.date_ecoute
    fill_in "Enregistrement musical", with: @souvenir.enregistrement_musical_id
    fill_in "Instrument", with: @souvenir.instrument_id
    check "Piece deja jouee" if @souvenir.piece_deja_jouee
    fill_in "Reflexion", with: @souvenir.reflexion
    fill_in "Resonnace emotionnelle", with: @souvenir.resonnace_emotionnelle
    fill_in "Session jeu", with: @souvenir.session_jeu_id
    click_on "Create Souvenir"

    assert_text "Souvenir was successfully created"
    click_on "Back"
  end

  test "should update Souvenir" do
    visit souvenir_url(@souvenir)
    click_on "Edit this souvenir", match: :first

    fill_in "Contexte", with: @souvenir.contexte
    fill_in "Date ecoute", with: @souvenir.date_ecoute
    fill_in "Enregistrement musical", with: @souvenir.enregistrement_musical_id
    fill_in "Instrument", with: @souvenir.instrument_id
    check "Piece deja jouee" if @souvenir.piece_deja_jouee
    fill_in "Reflexion", with: @souvenir.reflexion
    fill_in "Resonnace emotionnelle", with: @souvenir.resonnace_emotionnelle
    fill_in "Session jeu", with: @souvenir.session_jeu_id
    click_on "Update Souvenir"

    assert_text "Souvenir was successfully updated"
    click_on "Back"
  end

  test "should destroy Souvenir" do
    visit souvenir_url(@souvenir)
    click_on "Destroy this souvenir", match: :first

    assert_text "Souvenir was successfully destroyed"
  end
end
