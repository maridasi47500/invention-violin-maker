require "application_system_test_case"

class DiscoveredMisreadingsTest < ApplicationSystemTestCase
  setup do
    @discovered_misreading = discovered_misreadings(:one)
  end

  test "visiting the index" do
    visit discovered_misreadings_url
    assert_selector "h1", text: "Discovered misreadings"
  end

  test "should create discovered misreading" do
    visit discovered_misreadings_url
    click_on "New discovered misreading"

    fill_in "Epoch hypothesis", with: @discovered_misreading.epoch_hypothesis_id
    fill_in "Epoch", with: @discovered_misreading.epoch_id
    fill_in "From clue", with: @discovered_misreading.from_clue
    fill_in "Lesson", with: @discovered_misreading.lesson
    click_on "Create Discovered misreading"

    assert_text "Discovered misreading was successfully created"
    click_on "Back"
  end

  test "should update Discovered misreading" do
    visit discovered_misreading_url(@discovered_misreading)
    click_on "Edit this discovered misreading", match: :first

    fill_in "Epoch hypothesis", with: @discovered_misreading.epoch_hypothesis_id
    fill_in "Epoch", with: @discovered_misreading.epoch_id
    fill_in "From clue", with: @discovered_misreading.from_clue
    fill_in "Lesson", with: @discovered_misreading.lesson
    click_on "Update Discovered misreading"

    assert_text "Discovered misreading was successfully updated"
    click_on "Back"
  end

  test "should destroy Discovered misreading" do
    visit discovered_misreading_url(@discovered_misreading)
    click_on "Destroy this discovered misreading", match: :first

    assert_text "Discovered misreading was successfully destroyed"
  end
end
