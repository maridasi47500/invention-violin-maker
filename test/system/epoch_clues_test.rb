require "application_system_test_case"

class EpochCluesTest < ApplicationSystemTestCase
  setup do
    @epoch_clue = epoch_clues(:one)
  end

  test "visiting the index" do
    visit epoch_clues_url
    assert_selector "h1", text: "Epoch clues"
  end

  test "should create epoch clue" do
    visit epoch_clues_url
    click_on "New epoch clue"

    fill_in "Clue type", with: @epoch_clue.clue_type
    fill_in "Epoch", with: @epoch_clue.epoch
    fill_in "Fire point", with: @epoch_clue.fire_point_id
    fill_in "Value", with: @epoch_clue.value
    fill_in "Weight", with: @epoch_clue.weight
    click_on "Create Epoch clue"

    assert_text "Epoch clue was successfully created"
    click_on "Back"
  end

  test "should update Epoch clue" do
    visit epoch_clue_url(@epoch_clue)
    click_on "Edit this epoch clue", match: :first

    fill_in "Clue type", with: @epoch_clue.clue_type
    fill_in "Epoch", with: @epoch_clue.epoch
    fill_in "Fire point", with: @epoch_clue.fire_point_id
    fill_in "Value", with: @epoch_clue.value
    fill_in "Weight", with: @epoch_clue.weight
    click_on "Update Epoch clue"

    assert_text "Epoch clue was successfully updated"
    click_on "Back"
  end

  test "should destroy Epoch clue" do
    visit epoch_clue_url(@epoch_clue)
    click_on "Destroy this epoch clue", match: :first

    assert_text "Epoch clue was successfully destroyed"
  end
end
