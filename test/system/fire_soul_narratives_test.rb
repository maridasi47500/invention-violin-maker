require "application_system_test_case"

class FireSoulNarrativesTest < ApplicationSystemTestCase
  setup do
    @fire_soul_narrative = fire_soul_narratives(:one)
  end

  test "visiting the index" do
    visit fire_soul_narratives_url
    assert_selector "h1", text: "Fire soul narratives"
  end

  test "should create fire soul narrative" do
    visit fire_soul_narratives_url
    click_on "New fire soul narrative"

    fill_in "Aesthetic principle", with: @fire_soul_narrative.aesthetic_principle
    fill_in "Compositeur intention", with: @fire_soul_narrative.compositeur_intention
    fill_in "Epoch fingerprint", with: @fire_soul_narrative.epoch_fingerprint
    fill_in "Fire point", with: @fire_soul_narrative.fire_point_id
    fill_in "Violinist wisdom", with: @fire_soul_narrative.violinist_wisdom
    click_on "Create Fire soul narrative"

    assert_text "Fire soul narrative was successfully created"
    click_on "Back"
  end

  test "should update Fire soul narrative" do
    visit fire_soul_narrative_url(@fire_soul_narrative)
    click_on "Edit this fire soul narrative", match: :first

    fill_in "Aesthetic principle", with: @fire_soul_narrative.aesthetic_principle
    fill_in "Compositeur intention", with: @fire_soul_narrative.compositeur_intention
    fill_in "Epoch fingerprint", with: @fire_soul_narrative.epoch_fingerprint
    fill_in "Fire point", with: @fire_soul_narrative.fire_point_id
    fill_in "Violinist wisdom", with: @fire_soul_narrative.violinist_wisdom
    click_on "Update Fire soul narrative"

    assert_text "Fire soul narrative was successfully updated"
    click_on "Back"
  end

  test "should destroy Fire soul narrative" do
    visit fire_soul_narrative_url(@fire_soul_narrative)
    click_on "Destroy this fire soul narrative", match: :first

    assert_text "Fire soul narrative was successfully destroyed"
  end
end
