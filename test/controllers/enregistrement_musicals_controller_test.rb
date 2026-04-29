require "test_helper"

class EnregistrementMusicalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enregistrement_musical = enregistrement_musicals(:one)
  end

  test "should get index" do
    get enregistrement_musicals_url
    assert_response :success
  end

  test "should get new" do
    get new_enregistrement_musical_url
    assert_response :success
  end

  test "should create enregistrement_musical" do
    assert_difference("EnregistrementMusical.count") do
      post enregistrement_musicals_url, params: { enregistrement_musical: { date_achat_ou_decouverte: @enregistrement_musical.date_achat_ou_decouverte, date_enregistrement: @enregistrement_musical.date_enregistrement, epoque_compositeur_id: @enregistrement_musical.epoque_compositeur_id, epoque_enregistrement_id: @enregistrement_musical.epoque_enregistrement_id, format_media: @enregistrement_musical.format_media, label_editeur: @enregistrement_musical.label_editeur, lutherie_archet_id: @enregistrement_musical.lutherie_archet_id, lutherie_violon_id: @enregistrement_musical.lutherie_violon_id, notes_lutherie: @enregistrement_musical.notes_lutherie, oeuvre_id: @enregistrement_musical.oeuvre_id, source_achat: @enregistrement_musical.source_achat, url_streaming: @enregistrement_musical.url_streaming, violoniste_id: @enregistrement_musical.violoniste_id } }
    end

    assert_redirected_to enregistrement_musical_url(EnregistrementMusical.last)
  end

  test "should show enregistrement_musical" do
    get enregistrement_musical_url(@enregistrement_musical)
    assert_response :success
  end

  test "should get edit" do
    get edit_enregistrement_musical_url(@enregistrement_musical)
    assert_response :success
  end

  test "should update enregistrement_musical" do
    patch enregistrement_musical_url(@enregistrement_musical), params: { enregistrement_musical: { date_achat_ou_decouverte: @enregistrement_musical.date_achat_ou_decouverte, date_enregistrement: @enregistrement_musical.date_enregistrement, epoque_compositeur_id: @enregistrement_musical.epoque_compositeur_id, epoque_enregistrement_id: @enregistrement_musical.epoque_enregistrement_id, format_media: @enregistrement_musical.format_media, label_editeur: @enregistrement_musical.label_editeur, lutherie_archet_id: @enregistrement_musical.lutherie_archet_id, lutherie_violon_id: @enregistrement_musical.lutherie_violon_id, notes_lutherie: @enregistrement_musical.notes_lutherie, oeuvre_id: @enregistrement_musical.oeuvre_id, source_achat: @enregistrement_musical.source_achat, url_streaming: @enregistrement_musical.url_streaming, violoniste_id: @enregistrement_musical.violoniste_id } }
    assert_redirected_to enregistrement_musical_url(@enregistrement_musical)
  end

  test "should destroy enregistrement_musical" do
    assert_difference("EnregistrementMusical.count", -1) do
      delete enregistrement_musical_url(@enregistrement_musical)
    end

    assert_redirected_to enregistrement_musicals_url
  end
end
