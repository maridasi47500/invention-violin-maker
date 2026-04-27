require "application_system_test_case"

class MediaTest < ApplicationSystemTestCase
  setup do
    @media = media(:one)
  end

  test "visiting the index" do
    visit media_url
    assert_selector "h1", text: "Media"
  end

  test "should create media" do
    visit media_url
    click_on "New media"

    fill_in "Exemple musical", with: @media.exemple_musical_id
    fill_in "Type media", with: @media.type_media
    fill_in "Url", with: @media.url
    click_on "Create Media"

    assert_text "Media was successfully created"
    click_on "Back"
  end

  test "should update Media" do
    visit media_url(@media)
    click_on "Edit this media", match: :first

    fill_in "Exemple musical", with: @media.exemple_musical_id
    fill_in "Type media", with: @media.type_media
    fill_in "Url", with: @media.url
    click_on "Update Media"

    assert_text "Media was successfully updated"
    click_on "Back"
  end

  test "should destroy Media" do
    visit media_url(@media)
    click_on "Destroy this media", match: :first

    assert_text "Media was successfully destroyed"
  end
end
