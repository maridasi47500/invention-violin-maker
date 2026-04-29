require "test_helper"

class SessionJeuxControllerTest < ActionDispatch::IntegrationTest
  setup do
    @session_jeu = session_jeux(:one)
  end

  test "should get index" do
    get session_jeux_url
    assert_response :success
  end

  test "should get new" do
    get new_session_jeu_url
    assert_response :success
  end

  test "should create session_jeu" do
    assert_difference("SessionJeu.count") do
      post session_jeux_url, params: { session_jeu: { date_session: @session_jeu.date_session, duree_minutes: @session_jeu.duree_minutes, epoque_id: @session_jeu.epoque_id, heure_debut: @session_jeu.heure_debut, instrument_id: @session_jeu.instrument_id, notes_session: @session_jeu.notes_session, pieces_jouees: @session_jeu.pieces_jouees, reflexion_personnelle: @session_jeu.reflexion_personnelle, ressenti_epoque: @session_jeu.ressenti_epoque } }
    end

    assert_redirected_to session_jeu_url(SessionJeu.last)
  end

  test "should show session_jeu" do
    get session_jeu_url(@session_jeu)
    assert_response :success
  end

  test "should get edit" do
    get edit_session_jeu_url(@session_jeu)
    assert_response :success
  end

  test "should update session_jeu" do
    patch session_jeu_url(@session_jeu), params: { session_jeu: { date_session: @session_jeu.date_session, duree_minutes: @session_jeu.duree_minutes, epoque_id: @session_jeu.epoque_id, heure_debut: @session_jeu.heure_debut, instrument_id: @session_jeu.instrument_id, notes_session: @session_jeu.notes_session, pieces_jouees: @session_jeu.pieces_jouees, reflexion_personnelle: @session_jeu.reflexion_personnelle, ressenti_epoque: @session_jeu.ressenti_epoque } }
    assert_redirected_to session_jeu_url(@session_jeu)
  end

  test "should destroy session_jeu" do
    assert_difference("SessionJeu.count", -1) do
      delete session_jeu_url(@session_jeu)
    end

    assert_redirected_to session_jeux_url
  end
end
