require "application_system_test_case"

class EnregistrementMusicauxTest < ApplicationSystemTestCase
  setup do
    @enregistrement_musical = enregistrement_musicaux(:one)
  end

  test "visiting the index" do
    visit enregistrement_musicaux_url
    assert_selector "h1", text: "Enregistrement musicaux"
  end

  test "should create enregistrement musical" do
    visit enregistrement_musicaux_url
    click_on "New enregistrement musical"

    fill_in "Date achat ou decouverte", with: @enregistrement_musical.date_achat_ou_decouverte
    fill_in "Date enregistrement", with: @enregistrement_musical.date_enregistrement
    fill_in "Epoque compositeur", with: @enregistrement_musical.epoque_compositeur_id
    fill_in "Epoque enregistrement", with: @enregistrement_musical.epoque_enregistrement_id
    fill_in "Format media", with: @enregistrement_musical.format_media
    fill_in "Label editeur", with: @enregistrement_musical.label_editeur
    fill_in "Lutherie archet", with: @enregistrement_musical.lutherie_archet_id
    fill_in "Lutherie violon", with: @enregistrement_musical.lutherie_violon_id
    fill_in "Notes lutherie", with: @enregistrement_musical.notes_lutherie
    fill_in "Oeuvre", with: @enregistrement_musical.oeuvre_id
    fill_in "Source achat", with: @enregistrement_musical.source_achat
    fill_in "Url streaming", with: @enregistrement_musical.url_streaming
    fill_in "Violoniste", with: @enregistrement_musical.violoniste_id
    click_on "Create Enregistrement musical"

    assert_text "Enregistrement musical was successfully created"
    click_on "Back"
  end

  test "should update Enregistrement musical" do
    visit enregistrement_musical_url(@enregistrement_musical)
    click_on "Edit this enregistrement musical", match: :first

    fill_in "Date achat ou decouverte", with: @enregistrement_musical.date_achat_ou_decouverte
    fill_in "Date enregistrement", with: @enregistrement_musical.date_enregistrement
    fill_in "Epoque compositeur", with: @enregistrement_musical.epoque_compositeur_id
    fill_in "Epoque enregistrement", with: @enregistrement_musical.epoque_enregistrement_id
    fill_in "Format media", with: @enregistrement_musical.format_media
    fill_in "Label editeur", with: @enregistrement_musical.label_editeur
    fill_in "Lutherie archet", with: @enregistrement_musical.lutherie_archet_id
    fill_in "Lutherie violon", with: @enregistrement_musical.lutherie_violon_id
    fill_in "Notes lutherie", with: @enregistrement_musical.notes_lutherie
    fill_in "Oeuvre", with: @enregistrement_musical.oeuvre_id
    fill_in "Source achat", with: @enregistrement_musical.source_achat
    fill_in "Url streaming", with: @enregistrement_musical.url_streaming
    fill_in "Violoniste", with: @enregistrement_musical.violoniste_id
    click_on "Update Enregistrement musical"

    assert_text "Enregistrement musical was successfully updated"
    click_on "Back"
  end

  test "should destroy Enregistrement musical" do
    visit enregistrement_musical_url(@enregistrement_musical)
    click_on "Destroy this enregistrement musical", match: :first

    assert_text "Enregistrement musical was successfully destroyed"
  end
end
