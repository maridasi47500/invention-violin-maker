require "application_system_test_case"

class ExempleMusicalsTest < ApplicationSystemTestCase
  setup do
    @exemple_musical = exemple_musicals(:one)
  end

  test "visiting the index" do
    visit exemple_musicals_url
    assert_selector "h1", text: "Exemple musicals"
  end

  test "should create exemple musical" do
    visit exemple_musicals_url
    click_on "New exemple musical"

    fill_in "Coup archet", with: @exemple_musical.coup_archet_id
    fill_in "Description", with: @exemple_musical.description
    fill_in "Mesure", with: @exemple_musical.mesure
    fill_in "Oeuvre", with: @exemple_musical.oeuvre_id
    click_on "Create Exemple musical"

    assert_text "Exemple musical was successfully created"
    click_on "Back"
  end

  test "should update Exemple musical" do
    visit exemple_musical_url(@exemple_musical)
    click_on "Edit this exemple musical", match: :first

    fill_in "Coup archet", with: @exemple_musical.coup_archet_id
    fill_in "Description", with: @exemple_musical.description
    fill_in "Mesure", with: @exemple_musical.mesure
    fill_in "Oeuvre", with: @exemple_musical.oeuvre_id
    click_on "Update Exemple musical"

    assert_text "Exemple musical was successfully updated"
    click_on "Back"
  end

  test "should destroy Exemple musical" do
    visit exemple_musical_url(@exemple_musical)
    click_on "Destroy this exemple musical", match: :first

    assert_text "Exemple musical was successfully destroyed"
  end
end
