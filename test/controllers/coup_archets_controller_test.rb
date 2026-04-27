require "test_helper"

class CoupArchetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coup_archet = coup_archets(:one)
  end

  test "should get index" do
    get coup_archets_url
    assert_response :success
  end

  test "should get new" do
    get new_coup_archet_url
    assert_response :success
  end

  test "should create coup_archet" do
    assert_difference("CoupArchet.count") do
      post coup_archets_url, params: { coup_archet: { angle_archet: @coup_archet.angle_archet, caractere_id: @coup_archet.caractere_id, description: @coup_archet.description, dynamique_typique: @coup_archet.dynamique_typique, epoque_id: @coup_archet.epoque_id, longueur_archet: @coup_archet.longueur_archet, nom: @coup_archet.nom, point_contact: @coup_archet.point_contact, pression: @coup_archet.pression, puce_category_id: @coup_archet.puce_category_id, rythme_exact: @coup_archet.rythme_exact, style_musical_id: @coup_archet.style_musical_id, technique: @coup_archet.technique, type_attaque: @coup_archet.type_attaque, vitesse_archet: @coup_archet.vitesse_archet, vitesse_musicale: @coup_archet.vitesse_musicale } }
    end

    assert_redirected_to coup_archet_url(CoupArchet.last)
  end

  test "should show coup_archet" do
    get coup_archet_url(@coup_archet)
    assert_response :success
  end

  test "should get edit" do
    get edit_coup_archet_url(@coup_archet)
    assert_response :success
  end

  test "should update coup_archet" do
    patch coup_archet_url(@coup_archet), params: { coup_archet: { angle_archet: @coup_archet.angle_archet, caractere_id: @coup_archet.caractere_id, description: @coup_archet.description, dynamique_typique: @coup_archet.dynamique_typique, epoque_id: @coup_archet.epoque_id, longueur_archet: @coup_archet.longueur_archet, nom: @coup_archet.nom, point_contact: @coup_archet.point_contact, pression: @coup_archet.pression, puce_category_id: @coup_archet.puce_category_id, rythme_exact: @coup_archet.rythme_exact, style_musical_id: @coup_archet.style_musical_id, technique: @coup_archet.technique, type_attaque: @coup_archet.type_attaque, vitesse_archet: @coup_archet.vitesse_archet, vitesse_musicale: @coup_archet.vitesse_musicale } }
    assert_redirected_to coup_archet_url(@coup_archet)
  end

  test "should destroy coup_archet" do
    assert_difference("CoupArchet.count", -1) do
      delete coup_archet_url(@coup_archet)
    end

    assert_redirected_to coup_archets_url
  end
end
