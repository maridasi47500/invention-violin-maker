require "test_helper"

class SouvenirsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @souvenir = souvenirs(:one)
  end

  test "should get index" do
    get souvenirs_url
    assert_response :success
  end

  test "should get new" do
    get new_souvenir_url
    assert_response :success
  end

  test "should create souvenir" do
    assert_difference("Souvenir.count") do
      post souvenirs_url, params: { souvenir: { contexte: @souvenir.contexte, date_ecoute: @souvenir.date_ecoute, enregistrement_musical_id: @souvenir.enregistrement_musical_id, instrument_id: @souvenir.instrument_id, piece_deja_jouee: @souvenir.piece_deja_jouee, reflexion: @souvenir.reflexion, resonnace_emotionnelle: @souvenir.resonnace_emotionnelle, session_jeu_id: @souvenir.session_jeu_id } }
    end

    assert_redirected_to souvenir_url(Souvenir.last)
  end

  test "should show souvenir" do
    get souvenir_url(@souvenir)
    assert_response :success
  end

  test "should get edit" do
    get edit_souvenir_url(@souvenir)
    assert_response :success
  end

  test "should update souvenir" do
    patch souvenir_url(@souvenir), params: { souvenir: { contexte: @souvenir.contexte, date_ecoute: @souvenir.date_ecoute, enregistrement_musical_id: @souvenir.enregistrement_musical_id, instrument_id: @souvenir.instrument_id, piece_deja_jouee: @souvenir.piece_deja_jouee, reflexion: @souvenir.reflexion, resonnace_emotionnelle: @souvenir.resonnace_emotionnelle, session_jeu_id: @souvenir.session_jeu_id } }
    assert_redirected_to souvenir_url(@souvenir)
  end

  test "should destroy souvenir" do
    assert_difference("Souvenir.count", -1) do
      delete souvenir_url(@souvenir)
    end

    assert_redirected_to souvenirs_url
  end
end
