require "application_system_test_case"

class EpochHypothesesTest < ApplicationSystemTestCase
  setup do
    @epoch_hypothesis = epoch_hypotheses(:one)
  end

  test "visiting the index" do
    visit epoch_hypotheses_url
    assert_selector "h1", text: "Epoch hypotheses"
  end

  test "should create epoch hypothesis" do
    visit epoch_hypotheses_url
    click_on "New epoch hypothesis"

    fill_in "Bow stroke hypothesis", with: @epoch_hypothesis.bow_stroke_hypothesis
    fill_in "Confidence percent", with: @epoch_hypothesis.confidence_percent
    fill_in "Epoch detected", with: @epoch_hypothesis.epoch_detected
    fill_in "Experience", with: @epoch_hypothesis.experience_id
    fill_in "Reason", with: @epoch_hypothesis.reason
    click_on "Create Epoch hypothesis"

    assert_text "Epoch hypothesis was successfully created"
    click_on "Back"
  end

  test "should update Epoch hypothesis" do
    visit epoch_hypothesis_url(@epoch_hypothesis)
    click_on "Edit this epoch hypothesis", match: :first

    fill_in "Bow stroke hypothesis", with: @epoch_hypothesis.bow_stroke_hypothesis
    fill_in "Confidence percent", with: @epoch_hypothesis.confidence_percent
    fill_in "Epoch detected", with: @epoch_hypothesis.epoch_detected
    fill_in "Experience", with: @epoch_hypothesis.experience_id
    fill_in "Reason", with: @epoch_hypothesis.reason
    click_on "Update Epoch hypothesis"

    assert_text "Epoch hypothesis was successfully updated"
    click_on "Back"
  end

  test "should destroy Epoch hypothesis" do
    visit epoch_hypothesis_url(@epoch_hypothesis)
    click_on "Destroy this epoch hypothesis", match: :first

    assert_text "Epoch hypothesis was successfully destroyed"
  end
end
