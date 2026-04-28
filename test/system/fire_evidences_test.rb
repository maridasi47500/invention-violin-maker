require "application_system_test_case"

class FireEvidencesTest < ApplicationSystemTestCase
  setup do
    @fire_evidence = fire_evidences(:one)
  end

  test "visiting the index" do
    visit fire_evidences_url
    assert_selector "h1", text: "Fire evidences"
  end

  test "should create fire evidence" do
    visit fire_evidences_url
    click_on "New fire evidence"

    fill_in "Confidence", with: @fire_evidence.confidence
    fill_in "Content", with: @fire_evidence.content
    fill_in "Evidence type", with: @fire_evidence.evidence_type
    fill_in "Fire point", with: @fire_evidence.fire_point_id
    fill_in "Source", with: @fire_evidence.source
    fill_in "Source url", with: @fire_evidence.source_url
    click_on "Create Fire evidence"

    assert_text "Fire evidence was successfully created"
    click_on "Back"
  end

  test "should update Fire evidence" do
    visit fire_evidence_url(@fire_evidence)
    click_on "Edit this fire evidence", match: :first

    fill_in "Confidence", with: @fire_evidence.confidence
    fill_in "Content", with: @fire_evidence.content
    fill_in "Evidence type", with: @fire_evidence.evidence_type
    fill_in "Fire point", with: @fire_evidence.fire_point_id
    fill_in "Source", with: @fire_evidence.source
    fill_in "Source url", with: @fire_evidence.source_url
    click_on "Update Fire evidence"

    assert_text "Fire evidence was successfully updated"
    click_on "Back"
  end

  test "should destroy Fire evidence" do
    visit fire_evidence_url(@fire_evidence)
    click_on "Destroy this fire evidence", match: :first

    assert_text "Fire evidence was successfully destroyed"
  end
end
