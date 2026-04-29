require "application_system_test_case"

class SessionJeuxTest < ApplicationSystemTestCase
  setup do
    @session_jeu = session_jeux(:one)
  end

  test "visiting the index" do
    visit session_jeux_url
    assert_selector "h1", text: "Session jeux"
  end

  test "should create session jeu" do
    visit session_jeux_url
    click_on "New session jeu"

    fill_in "Date session", with: @session_jeu.date_session
    fill_in "Duree minutes", with: @session_jeu.duree_minutes
    fill_in "Epoque", with: @session_jeu.epoque_id
    fill_in "Heure debut", with: @session_jeu.heure_debut
    fill_in "Instrument", with: @session_jeu.instrument_id
    fill_in "Notes session", with: @session_jeu.notes_session
    fill_in "Pieces jouees", with: @session_jeu.pieces_jouees
    fill_in "Reflexion personnelle", with: @session_jeu.reflexion_personnelle
    fill_in "Ressenti epoque", with: @session_jeu.ressenti_epoque
    click_on "Create Session jeu"

    assert_text "Session jeu was successfully created"
    click_on "Back"
  end

  test "should update Session jeu" do
    visit session_jeu_url(@session_jeu)
    click_on "Edit this session jeu", match: :first

    fill_in "Date session", with: @session_jeu.date_session
    fill_in "Duree minutes", with: @session_jeu.duree_minutes
    fill_in "Epoque", with: @session_jeu.epoque_id
    fill_in "Heure debut", with: @session_jeu.heure_debut.to_s
    fill_in "Instrument", with: @session_jeu.instrument_id
    fill_in "Notes session", with: @session_jeu.notes_session
    fill_in "Pieces jouees", with: @session_jeu.pieces_jouees
    fill_in "Reflexion personnelle", with: @session_jeu.reflexion_personnelle
    fill_in "Ressenti epoque", with: @session_jeu.ressenti_epoque
    click_on "Update Session jeu"

    assert_text "Session jeu was successfully updated"
    click_on "Back"
  end

  test "should destroy Session jeu" do
    visit session_jeu_url(@session_jeu)
    click_on "Destroy this session jeu", match: :first

    assert_text "Session jeu was successfully destroyed"
  end
end
