require "application_system_test_case"

class StringSpiritsTest < ApplicationSystemTestCase
  setup do
    @string_spirit = string_spirits(:one)
  end

  test "visiting the index" do
    visit string_spirits_url
    assert_selector "h1", text: "String spirits"
  end

  test "should create string spirit" do
    visit string_spirits_url
    click_on "New string spirit"

    fill_in "Compositeur", with: @string_spirit.compositeur_id
    fill_in "Corde", with: @string_spirit.corde_id
    fill_in "Epoque", with: @string_spirit.epoque_id
    click_on "Create String spirit"

    assert_text "String spirit was successfully created"
    click_on "Back"
  end

  test "should update String spirit" do
    visit string_spirit_url(@string_spirit)
    click_on "Edit this string spirit", match: :first

    fill_in "Compositeur", with: @string_spirit.compositeur_id
    fill_in "Corde", with: @string_spirit.corde_id
    fill_in "Epoque", with: @string_spirit.epoque_id
    click_on "Update String spirit"

    assert_text "String spirit was successfully updated"
    click_on "Back"
  end

  test "should destroy String spirit" do
    visit string_spirit_url(@string_spirit)
    click_on "Destroy this string spirit", match: :first

    assert_text "String spirit was successfully destroyed"
  end
end
