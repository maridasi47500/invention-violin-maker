require "application_system_test_case"

class RestorationsTest < ApplicationSystemTestCase
  setup do
    @restoration = restorations(:one)
  end

  test "visiting the index" do
    visit restorations_url
    assert_selector "h1", text: "Restorations"
  end

  test "should create restoration" do
    visit restorations_url
    click_on "New restoration"

    fill_in "Description", with: @restoration.description
    fill_in "Instrument", with: @restoration.instrument_id
    fill_in "Work date", with: @restoration.work_date
    click_on "Create Restoration"

    assert_text "Restoration was successfully created"
    click_on "Back"
  end

  test "should update Restoration" do
    visit restoration_url(@restoration)
    click_on "Edit this restoration", match: :first

    fill_in "Description", with: @restoration.description
    fill_in "Instrument", with: @restoration.instrument_id
    fill_in "Work date", with: @restoration.work_date
    click_on "Update Restoration"

    assert_text "Restoration was successfully updated"
    click_on "Back"
  end

  test "should destroy Restoration" do
    visit restoration_url(@restoration)
    click_on "Destroy this restoration", match: :first

    assert_text "Restoration was successfully destroyed"
  end
end
