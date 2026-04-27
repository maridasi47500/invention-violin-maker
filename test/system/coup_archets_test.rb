require "application_system_test_case"

class CoupArchetsTest < ApplicationSystemTestCase
  setup do
    @coup_archet = coup_archets(:one)
  end

  test "visiting the index" do
    visit coup_archets_url
    assert_selector "h1", text: "Coup archets"
  end

  test "should create coup archet" do
    visit coup_archets_url
    click_on "New coup archet"

    fill_in "Angle archet", with: @coup_archet.angle_archet
    fill_in "Caractere", with: @coup_archet.caractere_id
    fill_in "Description", with: @coup_archet.description
    fill_in "Dynamique typique", with: @coup_archet.dynamique_typique
    fill_in "Epoque", with: @coup_archet.epoque_id
    fill_in "Longueur archet", with: @coup_archet.longueur_archet
    fill_in "Nom", with: @coup_archet.nom
    fill_in "Point contact", with: @coup_archet.point_contact
    fill_in "Pression", with: @coup_archet.pression
    fill_in "Puce category", with: @coup_archet.puce_category_id
    fill_in "Rythme exact", with: @coup_archet.rythme_exact
    fill_in "Style musical", with: @coup_archet.style_musical_id
    fill_in "Technique", with: @coup_archet.technique
    fill_in "Type attaque", with: @coup_archet.type_attaque
    fill_in "Vitesse archet", with: @coup_archet.vitesse_archet
    fill_in "Vitesse musicale", with: @coup_archet.vitesse_musicale
    click_on "Create Coup archet"

    assert_text "Coup archet was successfully created"
    click_on "Back"
  end

  test "should update Coup archet" do
    visit coup_archet_url(@coup_archet)
    click_on "Edit this coup archet", match: :first

    fill_in "Angle archet", with: @coup_archet.angle_archet
    fill_in "Caractere", with: @coup_archet.caractere_id
    fill_in "Description", with: @coup_archet.description
    fill_in "Dynamique typique", with: @coup_archet.dynamique_typique
    fill_in "Epoque", with: @coup_archet.epoque_id
    fill_in "Longueur archet", with: @coup_archet.longueur_archet
    fill_in "Nom", with: @coup_archet.nom
    fill_in "Point contact", with: @coup_archet.point_contact
    fill_in "Pression", with: @coup_archet.pression
    fill_in "Puce category", with: @coup_archet.puce_category_id
    fill_in "Rythme exact", with: @coup_archet.rythme_exact
    fill_in "Style musical", with: @coup_archet.style_musical_id
    fill_in "Technique", with: @coup_archet.technique
    fill_in "Type attaque", with: @coup_archet.type_attaque
    fill_in "Vitesse archet", with: @coup_archet.vitesse_archet
    fill_in "Vitesse musicale", with: @coup_archet.vitesse_musicale
    click_on "Update Coup archet"

    assert_text "Coup archet was successfully updated"
    click_on "Back"
  end

  test "should destroy Coup archet" do
    visit coup_archet_url(@coup_archet)
    click_on "Destroy this coup archet", match: :first

    assert_text "Coup archet was successfully destroyed"
  end
end
