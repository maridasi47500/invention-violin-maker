require "test_helper"

class CoupArchetEpoquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coup_archet_epoque = coup_archet_epoques(:one)
  end

  test "should get index" do
    get coup_archet_epoques_url
    assert_response :success
  end

  test "should get new" do
    get new_coup_archet_epoque_url
    assert_response :success
  end

  test "should create coup_archet_epoque" do
    assert_difference("CoupArchetEpoque.count") do
      post coup_archet_epoques_url, params: { coup_archet_epoque: { caracteristiques_typiques: @coup_archet_epoque.caracteristiques_typiques, coup_archet_id: @coup_archet_epoque.coup_archet_id, description_epoque: @coup_archet_epoque.description_epoque, epoque_id: @coup_archet_epoque.epoque_id, evolution_depuis_precedent: @coup_archet_epoque.evolution_depuis_precedent, exemples_references: @coup_archet_epoque.exemples_references, is_primary: @coup_archet_epoque.is_primary, ordre_chronologique_id: @coup_archet_epoque.ordre_chronologique_id, raison_mutation: @coup_archet_epoque.raison_mutation } }
    end

    assert_redirected_to coup_archet_epoque_url(CoupArchetEpoque.last)
  end

  test "should show coup_archet_epoque" do
    get coup_archet_epoque_url(@coup_archet_epoque)
    assert_response :success
  end

  test "should get edit" do
    get edit_coup_archet_epoque_url(@coup_archet_epoque)
    assert_response :success
  end

  test "should update coup_archet_epoque" do
    patch coup_archet_epoque_url(@coup_archet_epoque), params: { coup_archet_epoque: { caracteristiques_typiques: @coup_archet_epoque.caracteristiques_typiques, coup_archet_id: @coup_archet_epoque.coup_archet_id, description_epoque: @coup_archet_epoque.description_epoque, epoque_id: @coup_archet_epoque.epoque_id, evolution_depuis_precedent: @coup_archet_epoque.evolution_depuis_precedent, exemples_references: @coup_archet_epoque.exemples_references, is_primary: @coup_archet_epoque.is_primary, ordre_chronologique_id: @coup_archet_epoque.ordre_chronologique_id, raison_mutation: @coup_archet_epoque.raison_mutation } }
    assert_redirected_to coup_archet_epoque_url(@coup_archet_epoque)
  end

  test "should destroy coup_archet_epoque" do
    assert_difference("CoupArchetEpoque.count", -1) do
      delete coup_archet_epoque_url(@coup_archet_epoque)
    end

    assert_redirected_to coup_archet_epoques_url
  end
end
