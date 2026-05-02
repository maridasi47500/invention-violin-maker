require "application_system_test_case"

class EpochValidationsTest < ApplicationSystemTestCase
  setup do
    @epoch_validation = epoch_validations(:one)
  end

  test "visiting the index" do
    visit epoch_validations_url
    assert_selector "h1", text: "Epoch validations"
  end

  test "should create epoch validation" do
    visit epoch_validations_url
    click_on "New epoch validation"

    fill_in "Actual bow stroke", with: @epoch_validation.actual_bow_stroke
    fill_in "Discrepancy", with: @epoch_validation.discrepancy
    fill_in "Epoch hypothesis", with: @epoch_validation.epoch_hypothesis_id
    check "Matches hypothesis" if @epoch_validation.matches_hypothesis
    click_on "Create Epoch validation"

    assert_text "Epoch validation was successfully created"
    click_on "Back"
  end

  test "should update Epoch validation" do
    visit epoch_validation_url(@epoch_validation)
    click_on "Edit this epoch validation", match: :first

    fill_in "Actual bow stroke", with: @epoch_validation.actual_bow_stroke
    fill_in "Discrepancy", with: @epoch_validation.discrepancy
    fill_in "Epoch hypothesis", with: @epoch_validation.epoch_hypothesis_id
    check "Matches hypothesis" if @epoch_validation.matches_hypothesis
    click_on "Update Epoch validation"

    assert_text "Epoch validation was successfully updated"
    click_on "Back"
  end

  test "should destroy Epoch validation" do
    visit epoch_validation_url(@epoch_validation)
    click_on "Destroy this epoch validation", match: :first

    assert_text "Epoch validation was successfully destroyed"
  end
end
