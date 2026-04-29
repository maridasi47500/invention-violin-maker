require "test_helper"

class LutheriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @luthery = lutheries(:one)
  end

  test "should get index" do
    get lutheries_url
    assert_response :success
  end

  test "should get new" do
    get new_luthery_url
    assert_response :success
  end

  test "should create luthery" do
    assert_difference("Lutherie.count") do
      post lutheries_url, params: { luthery: { description_typique: @luthery.description_typique, disponible_achat_neuf: @luthery.disponible_achat_neuf, disponible_occasion: @luthery.disponible_occasion, epoque_id: @luthery.epoque_id, heritage_culturel: @luthery.heritage_culturel, materiel_caracteristique: @luthery.materiel_caracteristique, nom: @luthery.nom, pays: @luthery.pays, periode_fondation_debut: @luthery.periode_fondation_debut, periode_fondation_fin: @luthery.periode_fondation_fin, plateforme_achat: @luthery.plateforme_achat, prix_approximatif_eur: @luthery.prix_approximatif_eur, produit_touristique: @luthery.produit_touristique, region: @luthery.region, type_lutherie: @luthery.type_lutherie, ville: @luthery.ville } }
    end

    assert_redirected_to luthery_url(Lutherie.last)
  end

  test "should show luthery" do
    get luthery_url(@luthery)
    assert_response :success
  end

  test "should get edit" do
    get edit_luthery_url(@luthery)
    assert_response :success
  end

  test "should update luthery" do
    patch luthery_url(@luthery), params: { luthery: { description_typique: @luthery.description_typique, disponible_achat_neuf: @luthery.disponible_achat_neuf, disponible_occasion: @luthery.disponible_occasion, epoque_id: @luthery.epoque_id, heritage_culturel: @luthery.heritage_culturel, materiel_caracteristique: @luthery.materiel_caracteristique, nom: @luthery.nom, pays: @luthery.pays, periode_fondation_debut: @luthery.periode_fondation_debut, periode_fondation_fin: @luthery.periode_fondation_fin, plateforme_achat: @luthery.plateforme_achat, prix_approximatif_eur: @luthery.prix_approximatif_eur, produit_touristique: @luthery.produit_touristique, region: @luthery.region, type_lutherie: @luthery.type_lutherie, ville: @luthery.ville } }
    assert_redirected_to luthery_url(@luthery)
  end

  test "should destroy luthery" do
    assert_difference("Lutherie.count", -1) do
      delete luthery_url(@luthery)
    end

    assert_redirected_to lutheries_url
  end
end
