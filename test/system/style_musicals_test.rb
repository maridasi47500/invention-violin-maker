require "application_system_test_case"

class StyleMusicalsTest < ApplicationSystemTestCase
  setup do
    @style_musical = style_musicals(:one)
  end

  test "visiting the index" do
    visit style_musicals_url
    assert_selector "h1", text: "Style musicals"
  end

  test "should create style musical" do
    visit style_musicals_url
    click_on "New style musical"

    fill_in "Nom", with: @style_musical.nom
    click_on "Create Style musical"

    assert_text "Style musical was successfully created"
    click_on "Back"
  end

  test "should update Style musical" do
    visit style_musical_url(@style_musical)
    click_on "Edit this style musical", match: :first

    fill_in "Nom", with: @style_musical.nom
    click_on "Update Style musical"

    assert_text "Style musical was successfully updated"
    click_on "Back"
  end

  test "should destroy Style musical" do
    visit style_musical_url(@style_musical)
    click_on "Destroy this style musical", match: :first

    assert_text "Style musical was successfully destroyed"
  end
end
