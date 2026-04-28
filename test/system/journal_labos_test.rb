require "application_system_test_case"

class JournalLabosTest < ApplicationSystemTestCase
  setup do
    @journal_labo = journal_labos(:one)
  end

  test "visiting the index" do
    visit journal_labos_url
    assert_selector "h1", text: "Journal labos"
  end

  test "should create journal labo" do
    visit journal_labos_url
    click_on "New journal labo"

    fill_in "Date", with: @journal_labo.date
    fill_in "Mesure", with: @journal_labo.mesure
    fill_in "Oeuvre", with: @journal_labo.oeuvre_id
    click_on "Create Journal labo"

    assert_text "Journal labo was successfully created"
    click_on "Back"
  end

  test "should update Journal labo" do
    visit journal_labo_url(@journal_labo)
    click_on "Edit this journal labo", match: :first

    fill_in "Date", with: @journal_labo.date
    fill_in "Mesure", with: @journal_labo.mesure
    fill_in "Oeuvre", with: @journal_labo.oeuvre_id
    click_on "Update Journal labo"

    assert_text "Journal labo was successfully updated"
    click_on "Back"
  end

  test "should destroy Journal labo" do
    visit journal_labo_url(@journal_labo)
    click_on "Destroy this journal labo", match: :first

    assert_text "Journal labo was successfully destroyed"
  end
end
