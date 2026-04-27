require "application_system_test_case"

class ExplorationsTest < ApplicationSystemTestCase
  setup do
    @exploration = explorations(:one)
  end

  test "visiting the index" do
    visit explorations_url
    assert_selector "h1", text: "Explorations"
  end

  test "should create exploration" do
    visit explorations_url
    click_on "New exploration"

    fill_in "Audio reponse url", with: @exploration.audio_reponse_url
    fill_in "Fire point", with: @exploration.fire_point_id
    fill_in "Lilypond reponse", with: @exploration.lilypond_reponse
    fill_in "Notes", with: @exploration.notes
    fill_in "Violinist name", with: @exploration.violinist_name
    click_on "Create Exploration"

    assert_text "Exploration was successfully created"
    click_on "Back"
  end

  test "should update Exploration" do
    visit exploration_url(@exploration)
    click_on "Edit this exploration", match: :first

    fill_in "Audio reponse url", with: @exploration.audio_reponse_url
    fill_in "Fire point", with: @exploration.fire_point_id
    fill_in "Lilypond reponse", with: @exploration.lilypond_reponse
    fill_in "Notes", with: @exploration.notes
    fill_in "Violinist name", with: @exploration.violinist_name
    click_on "Update Exploration"

    assert_text "Exploration was successfully updated"
    click_on "Back"
  end

  test "should destroy Exploration" do
    visit exploration_url(@exploration)
    click_on "Destroy this exploration", match: :first

    assert_text "Exploration was successfully destroyed"
  end
end
