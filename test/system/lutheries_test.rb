require "application_system_test_case"

class LutheriesTest < ApplicationSystemTestCase
  setup do
    @luthery = lutheries(:one)
  end

  test "visiting the index" do
    visit lutheries_url
    assert_selector "h1", text: "Lutheries"
  end

  test "should create lutherie" do
    visit lutheries_url
    click_on "New lutherie"

    fill_in "Description typique", with: @luthery.description_typique
    check "Disponible achat neuf" if @luthery.disponible_achat_neuf
    check "Disponible occasion" if @luthery.disponible_occasion
    fill_in "Epoque", with: @luthery.epoque_id
    fill_in "Heritage culturel", with: @luthery.heritage_culturel
    fill_in "Materiel caracteristique", with: @luthery.materiel_caracteristique
    fill_in "Nom", with: @luthery.nom
    fill_in "Pays", with: @luthery.pays
    fill_in "Periode fondation debut", with: @luthery.periode_fondation_debut
    fill_in "Periode fondation fin", with: @luthery.periode_fondation_fin
    fill_in "Plateforme achat", with: @luthery.plateforme_achat
    fill_in "Prix approximatif eur", with: @luthery.prix_approximatif_eur
    check "Produit touristique" if @luthery.produit_touristique
    fill_in "Region", with: @luthery.region
    fill_in "Type lutherie", with: @luthery.type_lutherie
    fill_in "Ville", with: @luthery.ville
    click_on "Create Lutherie"

    assert_text "Lutherie was successfully created"
    click_on "Back"
  end

  test "should update Lutherie" do
    visit luthery_url(@luthery)
    click_on "Edit this lutherie", match: :first

    fill_in "Description typique", with: @luthery.description_typique
    check "Disponible achat neuf" if @luthery.disponible_achat_neuf
    check "Disponible occasion" if @luthery.disponible_occasion
    fill_in "Epoque", with: @luthery.epoque_id
    fill_in "Heritage culturel", with: @luthery.heritage_culturel
    fill_in "Materiel caracteristique", with: @luthery.materiel_caracteristique
    fill_in "Nom", with: @luthery.nom
    fill_in "Pays", with: @luthery.pays
    fill_in "Periode fondation debut", with: @luthery.periode_fondation_debut
    fill_in "Periode fondation fin", with: @luthery.periode_fondation_fin
    fill_in "Plateforme achat", with: @luthery.plateforme_achat
    fill_in "Prix approximatif eur", with: @luthery.prix_approximatif_eur
    check "Produit touristique" if @luthery.produit_touristique
    fill_in "Region", with: @luthery.region
    fill_in "Type lutherie", with: @luthery.type_lutherie
    fill_in "Ville", with: @luthery.ville
    click_on "Update Lutherie"

    assert_text "Lutherie was successfully updated"
    click_on "Back"
  end

  test "should destroy Lutherie" do
    visit luthery_url(@luthery)
    click_on "Destroy this lutherie", match: :first

    assert_text "Lutherie was successfully destroyed"
  end
end
