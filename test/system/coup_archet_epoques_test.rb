require "application_system_test_case"

class CoupArchetEpoquesTest < ApplicationSystemTestCase
  setup do
    @coup_archet_epoque = coup_archet_epoques(:one)
  end

  test "visiting the index" do
    visit coup_archet_epoques_url
    assert_selector "h1", text: "Coup archet epoques"
  end

  test "should create coup archet epoque" do
    visit coup_archet_epoques_url
    click_on "New coup archet epoque"

    fill_in "Caracteristiques typiques", with: @coup_archet_epoque.caracteristiques_typiques
    fill_in "Coup archet", with: @coup_archet_epoque.coup_archet_id
    fill_in "Description epoque", with: @coup_archet_epoque.description_epoque
    fill_in "Epoque", with: @coup_archet_epoque.epoque_id
    fill_in "Evolution depuis precedent", with: @coup_archet_epoque.evolution_depuis_precedent
    fill_in "Exemples references", with: @coup_archet_epoque.exemples_references
    check "Is primary" if @coup_archet_epoque.is_primary
    fill_in "Ordre chronologique", with: @coup_archet_epoque.ordre_chronologique_id
    fill_in "Raison mutation", with: @coup_archet_epoque.raison_mutation
    click_on "Create Coup archet epoque"

    assert_text "Coup archet epoque was successfully created"
    click_on "Back"
  end

  test "should update Coup archet epoque" do
    visit coup_archet_epoque_url(@coup_archet_epoque)
    click_on "Edit this coup archet epoque", match: :first

    fill_in "Caracteristiques typiques", with: @coup_archet_epoque.caracteristiques_typiques
    fill_in "Coup archet", with: @coup_archet_epoque.coup_archet_id
    fill_in "Description epoque", with: @coup_archet_epoque.description_epoque
    fill_in "Epoque", with: @coup_archet_epoque.epoque_id
    fill_in "Evolution depuis precedent", with: @coup_archet_epoque.evolution_depuis_precedent
    fill_in "Exemples references", with: @coup_archet_epoque.exemples_references
    check "Is primary" if @coup_archet_epoque.is_primary
    fill_in "Ordre chronologique", with: @coup_archet_epoque.ordre_chronologique_id
    fill_in "Raison mutation", with: @coup_archet_epoque.raison_mutation
    click_on "Update Coup archet epoque"

    assert_text "Coup archet epoque was successfully updated"
    click_on "Back"
  end

  test "should destroy Coup archet epoque" do
    visit coup_archet_epoque_url(@coup_archet_epoque)
    click_on "Destroy this coup archet epoque", match: :first

    assert_text "Coup archet epoque was successfully destroyed"
  end
end
